.class public final Lcom/android/launcher3/graphics/LauncherPreviewRenderer;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private final mDp:Lcom/android/launcher3/DeviceProfile;

.field private final mDpChangeListeners:Ljava/util/List;

.field private final mDpOrig:Lcom/android/launcher3/DeviceProfile;

.field private final mHomeElementInflater:Landroid/view/LayoutInflater;

.field private final mHotseat:Lcom/android/launcher3/Hotseat;

.field private final mLauncherWidgetSpanInfo:Landroid/util/SparseArray;

.field private final mRootView:Lcom/android/launcher3/InsettableFrameLayout;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWallpaperColorResources:Landroid/util/SparseIntArray;

.field private final mWorkspaceScreens:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpChangeListeners:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p2

    new-instance v0, LK0/d;

    invoke-direct {v0, p0}, LK0/d;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/DeviceProfile$Builder;->setViewScaleProvider(Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;)V

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    instance-of v0, p1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpOrig:Lcom/android/launcher3/DeviceProfile;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpOrig:Lcom/android/launcher3/DeviceProfile;

    :goto_0
    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p2, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iget-object v5, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v8

    iget-object v9, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v4

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    iget v5, v3, Lcom/android/launcher3/util/WindowBounds;->rotationHint:I

    if-ne v5, v4, :cond_1

    float-to-double v4, v2

    cmpg-double v4, v6, v4

    if-gez v4, :cond_1

    double-to-float v2, v6

    iget-object v1, v3, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f14014b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0d008c

    goto :goto_2

    :cond_3
    const v1, 0x7f0d008b

    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout;

    iput-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v1, v0, p2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(ILcom/android/launcher3/InsettableFrameLayout;I)V

    const p2, 0x7f0a01ba

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/Hotseat;

    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {p2, v3}, Lcom/android/launcher3/Hotseat;->resetLayout(Z)V

    if-nez p4, :cond_4

    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    :cond_4
    iput-object p4, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mLauncherWidgetSpanInfo:Landroid/util/SparseArray;

    const p2, 0x7f0a0401

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/CellLayout;

    iget-object p4, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v1, p4, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p4, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-boolean v7, p4, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v7, :cond_5

    iget-object p4, p4, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    div-int/lit8 p4, p4, 0x2

    goto :goto_3

    :cond_5
    iget p4, v1, Landroid/graphics/Rect;->right:I

    :goto_3
    iget v7, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, v7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    invoke-virtual {p2, v4, v6, p4, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p4, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p4, Ljava/util/HashMap;

    invoke-virtual {p4, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 p4, 0x1

    if-eqz p2, :cond_6

    const p2, 0x7f0a0403

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    invoke-virtual {p2, v1, v4, v5, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p2, :cond_9

    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p3

    :goto_4
    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f130105

    const-class v0, Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-static {p4, p2, v0}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/widget/LocalColorExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object v2

    :cond_8
    iput-object v2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    goto :goto_5

    :cond_9
    iput-object v2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    :goto_5
    new-instance p2, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$LauncherPreviewAppWidgetHost;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-void
.end method

.method public static a(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_SCALE:Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mLauncherWidgetSpanInfo:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/launcher3/DeviceProfile;->DEFAULT_SCALE:Landroid/graphics/PointF;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpOrig:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p0, v1, p1}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object p0

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Hotseat;->setQsbAlpha(F)V

    goto :goto_3

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Hotseat;->setQsbAlpha(F)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static dispatchVisibilityAggregated(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    :cond_2
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static measureView(ILcom/android/launcher3/InsettableFrameLayout;I)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public final getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;
    .locals 0

    sget-object p0, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    return-object p0
.end method

.method public final getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method public final getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    return-object p0
.end method

.method public final getOnDeviceProfileChangeListeners()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDpChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method public final getRenderedView(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)Lcom/android/launcher3/InsettableFrameLayout;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v7}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v8, Lcom/android/launcher3/util/m;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v9}, Lcom/android/launcher3/util/m;-><init>(Lcom/android/launcher3/util/IntSet;I)V

    invoke-interface {v6, v8}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v6, v1, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-static {v7, v6, v2, v3}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v3, v1, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-static {v7, v3, v4, v5}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v7, :cond_3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    const/4 v10, 0x6

    if-eq v7, v10, :cond_3

    const/16 v6, 0xa

    if-eq v7, v6, :cond_0

    goto :goto_0

    :cond_0
    check-cast v5, Lcom/android/launcher3/model/data/FolderInfo;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v7, -0x64

    if-ne v6, v7, :cond_1

    iget-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    :goto_1
    iget v7, v5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v7, v8, :cond_2

    const v7, 0x7f0d006d

    invoke-static {v7, v0, v6, v5}, Lcom/android/launcher3/folder/FolderIcon;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-static {v0, v6, v5}, Lcom/android/launcher3/apppairs/AppPairIcon;->inflateIcon(Lcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/apppairs/AppPairIcon;

    move-result-object v6

    :goto_2
    invoke-interface {v0, v6, v5}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_0

    :cond_3
    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v7, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    iget-object v8, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0d003f

    invoke-virtual {v8, v10, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v7, v6, v5, v6}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    invoke-interface {v0, v7, v5}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_5

    const/4 v7, 0x5

    if-eq v5, v7, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_8

    check-cast v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    iget-object v7, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v5, v7, v8}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object/from16 v7, p2

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    iget-object v7, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v8, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    iget v10, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v7, v8, v10, v5}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iget-object v7, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_7

    invoke-virtual {v5, v7}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/util/SparseIntArray;)V

    :cond_7
    invoke-virtual {v5, v4}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-interface {v0, v5, v4}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_3

    :cond_8
    check-cast v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v8, v1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v8, v5, v7}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetProviderInfoByProviderName(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    iget-object v7, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v8, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mContext:Landroid/content/Context;

    iget v10, v4, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v5, v5, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v7, v8, v10, v5}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iget-object v7, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWallpaperColorResources:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_a

    invoke-virtual {v5, v7}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/util/SparseIntArray;)V

    :cond_a
    invoke-virtual {v5, v4}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-interface {v0, v5, v4}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_3

    :cond_b
    iget-object v3, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    new-instance v4, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v4}, Lcom/android/launcher3/util/IntSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/model/n0;

    invoke-direct {v5, v9}, Lcom/android/launcher3/model/n0;-><init>(I)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/model/p0;

    invoke-direct {v5, v4}, Lcom/android/launcher3/model/p0;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    invoke-static {v6, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/model/q0;

    invoke-direct {v5, v4}, Lcom/android/launcher3/model/q0;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {v3, v5}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/model/r0;

    invoke-direct {v4, v2}, Lcom/android/launcher3/model/r0;-><init>(Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v3, -0x67

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    if-nez v1, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_c
    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    :goto_4
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v6

    :goto_5
    if-ge v5, v4, :cond_d

    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    new-instance v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v8, v10}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iput v3, v8, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v7, v8, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v10, v7}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v10

    iput v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v10, v7}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v10

    iput v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v7, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    iget-object v10, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0d00ce

    invoke-virtual {v10, v11, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {v7, v6, v8, v6}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->applyFromWorkspaceItem(ILcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    invoke-interface {v0, v7, v8}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    iget-object v1, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/CellLayout;

    iget-object v1, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mHomeElementInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    new-instance v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v10}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-direct {v14, v6, v6, v1, v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    iput-boolean v6, v14, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    const/4 v12, 0x0

    const v13, 0x7f0a02d2

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)Z

    iget-object v1, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v2, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v3, v1, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(ILcom/android/launcher3/InsettableFrameLayout;I)V

    iget-object v1, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    invoke-static {v1, v9}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    iget-object v1, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v2, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v3, v1, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(ILcom/android/launcher3/InsettableFrameLayout;I)V

    iget-object v1, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    iget-object v2, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-static {v3, v1, v2}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->measureView(ILcom/android/launcher3/InsettableFrameLayout;I)V

    iget-object v0, v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mRootView:Lcom/android/launcher3/InsettableFrameLayout;

    return-object v0
.end method

.method public final getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mWorkspaceScreens:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public final hideBottomRow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->mUiHandler:Landroid/os/Handler;

    new-instance v1, LK0/e;

    invoke-direct {v1, p0, p1}, LK0/e;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const-string v0, "TextClock"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;

    invoke-direct {p1, p0, p3, p4}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$1;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    :cond_0
    const-string p0, "fragment"

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_1

    return-object p2

    .line 4
    :cond_1
    sget-object p0, Lcom/android/launcher3/R$styleable;->PreviewFragment:[I

    invoke-virtual {p3, p4, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p4, 0x0

    .line 5
    invoke-virtual {p0, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 6
    invoke-static {p3, p4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/graphics/FragmentWithPreview;

    .line 7
    invoke-virtual {p4, p3}, Lcom/android/launcher3/graphics/FragmentWithPreview;->enterPreviewMode(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p4}, Lcom/android/launcher3/graphics/FragmentWithPreview;->onInit()V

    .line 9
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p4, p3, p1, p2}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 10
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
