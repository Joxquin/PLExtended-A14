.class final Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;
.super Lcom/android/launcher3/model/LoaderTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field final synthetic val$idp:Lcom/android/launcher3/InvariantDeviceProfile;

.field final synthetic val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 6

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p6, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$idp:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p7, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->e(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Landroid/util/SparseArray;Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-static {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->d(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, LK0/g;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p1}, LK0/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$idp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_0

    const-string v0, "screen = 0 or container = -101 or screen = 1"

    goto :goto_0

    :cond_0
    const-string v0, "screen = 0 or container = -101"

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getLoadedLauncherWidgetInfo()Landroid/util/SparseArray;

    move-result-object v5

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v4, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object v6, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$idp:Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v1, Lcom/android/launcher3/graphics/b;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/graphics/b;-><init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Object;Lcom/android/launcher3/InvariantDeviceProfile;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
