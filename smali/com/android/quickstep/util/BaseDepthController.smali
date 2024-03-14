.class public Lcom/android/quickstep/util/BaseDepthController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEPTH:Landroid/util/FloatProperty;

.field private static final DEPTH_INDEX_COUNT:I = 0x2

.field private static final DEPTH_INDEX_STATE_TRANSITION:I = 0x0

.field private static final DEPTH_INDEX_WIDGET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseDepthController"


# instance fields
.field protected mCrossWindowBlursEnabled:Z

.field protected mCurrentBlur:I

.field private mDepth:F

.field private mHasContentBehindLauncher:Z

.field protected mInEarlyWakeUp:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field protected final mMaxBlurRadius:I

.field protected mPauseBlurs:Z

.field protected mSurface:Landroid/view/SurfaceControl;

.field protected mWaitingOnSurfaceValidity:Z

.field protected final mWallpaperManager:Landroid/app/WallpaperManager;

.field public final stateDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field public final widgetDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/BaseDepthController$1;

    const-string v1, "depth"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/BaseDepthController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/BaseDepthController;->DEPTH:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mMaxBlurRadius:I

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance p1, Lcom/android/launcher3/util/MultiPropertyFactory;

    sget-object v0, Lcom/android/quickstep/util/BaseDepthController;->DEPTH:Landroid/util/FloatProperty;

    new-instance v1, Lcom/android/launcher3/taskbar/q;

    invoke-direct {v1}, Lcom/android/launcher3/taskbar/q;-><init>()V

    const/4 v2, 0x2

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/BaseDepthController;->stateDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/BaseDepthController;->widgetDepth:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/util/BaseDepthController;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/BaseDepthController;->mDepth:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/quickstep/util/BaseDepthController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/BaseDepthController;->setDepth(F)V

    return-void
.end method

.method private setDepth(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mDepth:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mDepth:F

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->applyDepthAndBlur()V

    return-void
.end method


# virtual methods
.method public applyDepthAndBlur()V
    .locals 7

    iget v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mDepth:F

    iget-object v1, p0, Lcom/android/quickstep/util/BaseDepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/quickstep/util/BaseDepthController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/app/WallpaperManager;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/BlurUtils;->supportsBlursOnWindows()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/util/BaseDepthController;->mSurface:Landroid/view/SurfaceControl;

    const-string v2, "BaseDepthController"

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSurface is null and mCurrentBlur is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/quickstep/util/BaseDepthController;->mCurrentBlur:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v0, "mSurface is not valid"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/quickstep/util/BaseDepthController;->mWaitingOnSurfaceValidity:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->onInvalidSurface()V

    return-void

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/quickstep/util/BaseDepthController;->mWaitingOnSurfaceValidity:Z

    iget-object v2, p0, Lcom/android/quickstep/util/BaseDepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/views/ScrimView;->isFullyOpaque()Z

    move-result v2

    iget-boolean v4, p0, Lcom/android/quickstep/util/BaseDepthController;->mHasContentBehindLauncher:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/quickstep/util/BaseDepthController;->mPauseBlurs:Z

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_0
    iget-boolean v5, p0, Lcom/android/quickstep/util/BaseDepthController;->mCrossWindowBlursEnabled:Z

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/quickstep/util/BaseDepthController;->mPauseBlurs:Z

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/android/quickstep/util/BaseDepthController;->mMaxBlurRadius:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v2, v1

    :goto_2
    iput v2, p0, Lcom/android/quickstep/util/BaseDepthController;->mCurrentBlur:I

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v5, p0, Lcom/android/quickstep/util/BaseDepthController;->mSurface:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/quickstep/util/BaseDepthController;->mCurrentBlur:I

    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v5, p0, Lcom/android/quickstep/util/BaseDepthController;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    if-eqz v0, :cond_8

    iget-boolean v4, p0, Lcom/android/quickstep/util/BaseDepthController;->mInEarlyWakeUp:Z

    if-nez v4, :cond_8

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    iput-boolean v3, p0, Lcom/android/quickstep/util/BaseDepthController;->mInEarlyWakeUp:Z

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mInEarlyWakeUp:Z

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    iput-boolean v1, p0, Lcom/android/quickstep/util/BaseDepthController;->mInEarlyWakeUp:Z

    :cond_9
    :goto_4
    iget-object p0, p0, Lcom/android/quickstep/util/BaseDepthController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0, v2}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    :cond_a
    return-void
.end method

.method public onInvalidSurface()V
    .locals 0

    return-void
.end method

.method public pauseBlursOnWindows(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mPauseBlurs:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mPauseBlurs:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->applyDepthAndBlur()V

    :cond_0
    return-void
.end method

.method public setCrossWindowBlursEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mCrossWindowBlursEnabled:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->applyDepthAndBlur()V

    return-void
.end method

.method public setHasContentBehindLauncher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mHasContentBehindLauncher:Z

    return-void
.end method

.method public setSurface(Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mSurface:Landroid/view/SurfaceControl;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mWaitingOnSurfaceValidity:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/util/BaseDepthController;->mSurface:Landroid/view/SurfaceControl;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setSurface:\n\tmWaitingOnSurfaceValidity: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mWaitingOnSurfaceValidity:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n\tmSurface: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/util/BaseDepthController;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseDepthController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/quickstep/util/BaseDepthController;->applyDepthAndBlur()V

    :cond_1
    return-void
.end method
