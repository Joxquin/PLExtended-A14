.class public final Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mLauncherDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

.field private final mProxyView:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/DeviceProfile;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$1;-><init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v0, 0x0

    const/16 v1, 0x7f6

    invoke-virtual {p1, v1, v0}, Landroid/view/ContextThemeWrapper;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mWindowContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;-><init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mProxyView:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x800000

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const-string v1, "Taskbar Overlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 p1, 0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setSystemApplicationOverlay(Z)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mLauncherDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;Landroid/view/WindowManager;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;Landroid/view/WindowManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method


# virtual methods
.method public final getCloseDuration()I
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/uioverrides/states/AllAppsState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public final getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mLauncherDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method public final getOpenDuration()I
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/uioverrides/states/AllAppsState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public final hideWindow()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mProxyView:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public final maybeCloseWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    if-eqz v0, :cond_1

    const v1, 0x3fffff

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mProxyView:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->onDestroy()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, La1/b;

    invoke-direct {v1}, La1/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, La1/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, La1/c;-><init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    return-void
.end method

.method public final requestWindow()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mWindowContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v2}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mProxyView:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;->a(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$TaskbarOverlayProxyView;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, La1/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, La1/c;-><init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    return-object p0
.end method

.method public final updateLauncherDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mLauncherDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->mOverlayContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, La1/d;

    invoke-direct {p1}, La1/d;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
