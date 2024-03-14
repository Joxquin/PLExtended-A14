.class public final Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisplay:Landroid/view/Display;

.field private mGridName:Ljava/lang/String;

.field private final mHeight:I

.field private mHideQsb:Z

.field private final mHostToken:Landroid/os/IBinder;

.field private final mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

.field private final mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private final mWallpaperColors:Landroid/app/WallpaperColors;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mGridName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mGridName:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mGridName:Ljava/lang/String;

    :cond_0
    const-string v1, "wallpaper_colors"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    const-string v1, "hide_bottom_row"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHideQsb:Z

    const-string v1, "host_token"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    const-string v1, "width"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    const-string v1, "height"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const-string v2, "display_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, LK0/h;

    invoke-direct {v1, p0, p1}, LK0/h;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-wide/16 v1, 0x5

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControlViewHost;

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, LK0/g;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, LK0/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x7f6

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f130105

    const-class v5, Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-static {v4, v3, v5}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(ILandroid/content/Context;Ljava/lang/Class;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-virtual {v3, v0, v2}, Lcom/android/launcher3/widget/LocalColorExtractor;->applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v2}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    invoke-static {v2, v0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(ILandroid/content/Context;)I

    move-result v2

    invoke-direct {v3, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v2, v3

    :goto_0
    new-instance v9, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mGridName:Ljava/lang/String;

    invoke-direct {v9, v2, v0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2, v9}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v10, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-direct {v10, v2, v9}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v10}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/model/ModelDbController;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    const-string v4, "favorites"

    invoke-static {v0, v2, v4, v3}, Lcom/android/launcher3/provider/LauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v10}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelDbController;->clearEmptyDbFlag()V

    new-instance v6, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v6}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    new-instance v0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;

    invoke-static {v10}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-static {v10}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/model/LauncherBinder;

    invoke-static {v10}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-direct {v8, v2, v6, v1, v3}, Lcom/android/launcher3/model/LauncherBinder;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->run()V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, LK0/i;

    invoke-direct {v1, p0, v2, v9}, LK0/i;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->loadAsync(Ljava/util/function/Consumer;)V

    :goto_1
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;)Landroid/view/SurfaceControlViewHost;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/util/RunnableList;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method private renderView(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWallpaperColors:Landroid/app/WallpaperColors;

    invoke-direct {v0, p1, p5, v1, p4}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/app/WallpaperColors;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    iget-boolean p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHideQsb:Z

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->hideBottomRow(Z)V

    iget-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->getRenderedView(Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;)Lcom/android/launcher3/InsettableFrameLayout;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mWidth:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    div-float p3, p2, p3

    iget p4, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHeight:I

    int-to-float p4, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    div-float p5, p4, p5

    invoke-static {p3, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    const/4 p5, 0x0

    invoke-virtual {p1, p5}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    sub-float/2addr p4, p3

    div-float/2addr p4, v0

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0xc8

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mDestroyed:Z

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mOnDestroyCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public final getHostToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mHostToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getLoadedLauncherWidgetInfo()Landroid/util/SparseArray;
    .locals 10

    const-string v0, "spanY"

    const-string v1, "spanX"

    const-string v2, "appWidgetId"

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lcom/android/launcher3/model/ModelDbController;

    move-result-object v4

    :try_start_0
    const-string v5, "favorites"

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "itemType = 4"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/model/ModelDbController;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v4, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "PreviewSurfaceRenderer"

    const-string v1, "Error querying for launcher widget info"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p0

    return-object p0
.end method

.method public final hideBottomRow(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mRenderer:Lcom/android/launcher3/graphics/LauncherPreviewRenderer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/LauncherPreviewRenderer;->hideBottomRow(Z)V

    :cond_0
    return-void
.end method
