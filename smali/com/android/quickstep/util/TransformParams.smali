.class public Lcom/android/quickstep/util/TransformParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static PROGRESS:Landroid/util/FloatProperty;

.field public static TARGET_ALPHA:Landroid/util/FloatProperty;


# instance fields
.field private mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

.field private mCornerRadius:F

.field private mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

.field private mProgress:F

.field private mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private mTargetAlpha:F

.field private mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/TransformParams$1;

    const-string v1, "progress"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/TransformParams$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/TransformParams;->PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/quickstep/util/TransformParams$2;

    const-string v1, "targetAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/TransformParams$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/util/TransformParams;->TARGET_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->ALWAYS_VISIBLE:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    iput-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    iput-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    return-void
.end method


# virtual methods
.method public applySurfaceParams(Lcom/android/quickstep/util/SurfaceTransaction;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/TransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    return-void
.end method

.method public createSurfaceParams(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/SurfaceTransaction;
    .locals 9

    iget-object v0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    new-instance v1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Landroid/view/RemoteAnimationTarget;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    iget-object v5, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v5

    iget v6, v4, Landroid/view/RemoteAnimationTarget;->mode:I

    iget v7, v0, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    if-ne v6, v7, :cond_4

    iget-object v6, v4, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    invoke-interface {v6, v5, v4, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V

    goto :goto_3

    :cond_1
    iget-object v6, v4, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v6, :cond_2

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    iget-boolean v7, v4, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/util/TransformParams;->getProgress()F

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v6

    sget-object v7, Ly0/e;->D:Landroid/view/animation/Interpolator;

    check-cast v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v7, v6}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v8, v6

    invoke-virtual {v5, v8}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/util/TransformParams;->getTargetAlpha()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    :goto_2
    invoke-interface {p1, v5, v4, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    invoke-interface {v6, v5, v4, p0}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    if-eqz p0, :cond_6

    array-length p0, p0

    goto :goto_4

    :cond_6
    move p0, v2

    :goto_4
    if-ge v2, p0, :cond_7

    iget-object p1, v0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-object v1
.end method

.method public getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    return p0
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    return p0
.end method

.method public getTargetAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    return p0
.end method

.method public getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    return-object p0
.end method

.method public setBaseBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mBaseBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    return-object p0
.end method

.method public setCornerRadius(F)Lcom/android/quickstep/util/TransformParams;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mCornerRadius:F

    return-object p0
.end method

.method public setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mHomeBuilderProxy:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    return-object p0
.end method

.method public setProgress(F)Lcom/android/quickstep/util/TransformParams;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mProgress:F

    return-object p0
.end method

.method public setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-object p0
.end method

.method public setTargetAlpha(F)Lcom/android/quickstep/util/TransformParams;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/TransformParams;->mTargetAlpha:F

    return-object p0
.end method

.method public setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/TransformParams;->mTargetSet:Lcom/android/quickstep/RemoteAnimationTargets;

    return-object p0
.end method
