.class public final Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;
.super Landroid/window/IRemoteTransition$Stub;
.source "SourceFile"


# static fields
.field private static final IDENTITY_TRANSLATION:Lm3/p;

.field private static final INVERSE_MATRIX:Landroid/graphics/Matrix;

.field private static final REVERSE_TRANSLATION:Lm3/p;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callbacks:Lcom/android/launcher3/Workspace;

.field private carryForwardDisplacement:F

.field private final context:Landroid/content/Context;

.field private destroyed:Z

.field private final downPoint:Landroid/graphics/PointF;

.field private dragStarted:Z

.field private final endCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private final evenTransform:Landroid/graphics/Matrix;

.field private finishingToTarget:Z

.field private final isOpeningNegOne:Z

.field private final launcherTranslation:Lkotlin/jvm/internal/Lambda;

.field private maxDisplacement:F

.field private final monitor:Landroid/view/InputMonitor;

.field private final negOneTranslation:Lkotlin/jvm/internal/Lambda;

.field private final slop:I

.field private surfaceTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private targetInfo:LU1/l;

.field private final taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final translationMultiplier:F

.field private final vTracker:Landroid/view/VelocityTracker;

.field private xAtDragStart:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$IDENTITY_TRANSLATION$1;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$IDENTITY_TRANSLATION$1;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->IDENTITY_TRANSLATION:Lm3/p;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$REVERSE_TRANSLATION$1;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition$Companion$REVERSE_TRANSLATION$1;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->REVERSE_TRANSLATION:Lm3/p;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->INVERSE_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/InputMonitor;ZLandroid/graphics/Matrix;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->monitor:Landroid/view/InputMonitor;

    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->isOpeningNegOne:Z

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->evenTransform:Landroid/graphics/Matrix;

    const-string p2, "SwipeTransition"

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->TAG:Ljava/lang/String;

    new-instance p2, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance p4, LU1/m;

    const/4 v0, 0x1

    invoke-direct {p4, p0, v0}, LU1/m;-><init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;I)V

    invoke-direct {p2, p4}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->maxDisplacement:F

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->vTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->slop:I

    new-instance p2, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p2}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->endCallbacks:Lcom/android/launcher3/util/RunnableList;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->tmpMatrix:Landroid/graphics/Matrix;

    sget-object p2, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->IDENTITY_TRANSLATION:Lm3/p;

    sget-object p4, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->REVERSE_TRANSLATION:Lm3/p;

    if-eqz p3, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    check-cast v0, Lkotlin/jvm/internal/Lambda;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->launcherTranslation:Lkotlin/jvm/internal/Lambda;

    if-eqz p3, :cond_1

    move-object p2, p4

    :cond_1
    check-cast p2, Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->negOneTranslation:Lkotlin/jvm/internal/Lambda;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    :goto_1
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->translationMultiplier:F

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->downPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public static final synthetic access$endHandler(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->endHandler()V

    return-void
.end method

.method public static final synthetic access$getINVERSE_MATRIX$cp()Landroid/graphics/Matrix;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->INVERSE_MATRIX:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static final access$onAnimationFinished(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->finishingToTarget:Z

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->endHandler()V

    return-void
.end method

.method public static final synthetic access$onTaskMovementChanged(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->onTaskMovementChanged()V

    return-void
.end method

.method private final endHandler()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->destroyed:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->endCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->finishTargets()V

    return-void
.end method

.method private final finishTargets()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->callbacks:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->targetInfo:LU1/l;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->finishingToTarget:Z

    const/4 v3, 0x0

    iget-object v4, v0, LU1/l;->b:Landroid/window/TransitionInfo$Change;

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-object v2, v3

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v5, v0, LU1/l;->a:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-object v5, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v5, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU1/k;

    invoke-virtual {v5, v1, v4}, LU1/k;->b(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    :goto_0
    sget-object v4, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v4, LU1/k;->k:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU1/k;

    iget-object v5, v0, LU1/l;->c:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4, v1, v5}, LU1/k;->b(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    :try_start_0
    iget-object v0, v0, LU1/l;->d:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-interface {v0, v2, v1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TargetInfo"

    const-string v2, "Failed to finish transition "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->targetInfo:LU1/l;

    return-void
.end method

.method private final onTaskMovementChanged()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->callbacks:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->launcherTranslation:Lkotlin/jvm/internal/Lambda;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v3, v3, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lm3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->targetInfo:LU1/l;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->tmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->negOneTranslation:Lkotlin/jvm/internal/Lambda;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v4, v4, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->maxDisplacement:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lm3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->translationMultiplier:F

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, v0, LU1/l;->c:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->surfaceTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    sget-object p0, Le3/f;->a:Le3/f;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    invoke-virtual {v1}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getEndCallbacks()Lcom/android/launcher3/util/RunnableList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->endCallbacks:Lcom/android/launcher3/util/RunnableList;

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 1

    const-string v0, "iBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transitionInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transaction"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mergeTarget"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "finishedCallback"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, LU1/m;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, LU1/m;-><init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;I)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->evenTransform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_b

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_5

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->finishingToTarget:Z

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->endHandler()V

    goto/16 :goto_5

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->dragStarted:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->downPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->downPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_4

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->slop:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->endHandler()V

    goto/16 :goto_5

    :cond_4
    iget v3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->slop:I

    int-to-float v3, v3

    cmpl-float v5, v0, v3

    if-lez v5, :cond_19

    cmpl-float v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->downPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->xAtDragStart:F

    iput-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->dragStarted:Z

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->isOpeningNegOne:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->monitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->context:Landroid/content/Context;

    const-class v4, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "homeIntent"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->startActivity(Landroid/content/Intent;)V

    :cond_5
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->xAtDragStart:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->maxDisplacement:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_6

    move v1, v0

    :cond_6
    cmpl-float v0, p0, v1

    if-lez v0, :cond_7

    move p0, v1

    :cond_7
    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    goto/16 :goto_5

    :cond_8
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->carryForwardDisplacement:F

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->xAtDragStart:F

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->maxDisplacement:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_9

    move v1, v0

    :cond_9
    cmpl-float v0, p0, v1

    if-lez v0, :cond_a

    move p0, v1

    :cond_a
    invoke-virtual {p1, p0}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    goto/16 :goto_5

    :cond_b
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->vTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070183

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    move v5, v4

    goto :goto_0

    :cond_c
    move v5, v3

    :goto_0
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->targetInfo:LU1/l;

    if-eqz v6, :cond_d

    iget-object v6, v6, LU1/l;->a:Landroid/window/TransitionInfo$Change;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto :goto_1

    :cond_d
    sget-object v6, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v6}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/util/DisplayController$Info;->realBounds:Lcom/android/launcher3/util/WindowBounds;

    iget-object v6, v6, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    :goto_1
    if-eqz v5, :cond_10

    cmpg-float v2, p1, v1

    if-gez v2, :cond_e

    move v3, v4

    :cond_e
    cmpl-float v2, p1, v1

    if-lez v2, :cond_f

    goto :goto_2

    :cond_f
    int-to-float v1, v6

    goto :goto_2

    :cond_10
    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v7, v7, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    int-to-float v8, v6

    int-to-float v2, v2

    div-float v2, v8, v2

    cmpl-float v2, v7, v2

    if-lez v2, :cond_11

    move v3, v4

    :cond_11
    if-eqz v3, :cond_12

    move v1, v8

    :cond_12
    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v4, "taskDisplacement.animateToValue(endValue)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LU1/n;

    invoke-direct {v4, p0, v3}, LU1/n;-><init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;Z)V

    invoke-static {v4}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v5, :cond_16

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v3, v3, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    sub-float/2addr v3, v1

    int-to-float v1, v6

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v3

    if-lez v5, :cond_13

    goto :goto_3

    :cond_13
    move v3, v4

    :goto_3
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    const v4, 0x3ef1463a

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v5

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070328

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float v3, p0, p1

    if-gez v3, :cond_14

    move p0, p1

    :cond_14
    const/4 p1, 0x4

    int-to-long v3, p1

    int-to-float p1, v0

    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    mul-long/2addr p0, v3

    invoke-virtual {v2, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p0, Ly0/e;->I:Ly0/d;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot round NaN value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_4
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_5

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->dragStarted:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->xAtDragStart:F

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->taskDisplacement:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->carryForwardDisplacement:F

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatedFloat;->cancelAnimation()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->monitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    goto :goto_5

    :cond_18
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->downPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_19
    :goto_5
    return-void
.end method

.method public final onTargetReceived(LU1/l;)V
    .locals 1

    const-string v0, "targetInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->targetInfo:LU1/l;

    iget-object p1, p1, LU1/l;->c:Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->maxDisplacement:F

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->destroyed:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->finishTargets()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->onTaskMovementChanged()V

    :goto_0
    return-void
.end method

.method public final setCallbacks(Lcom/android/launcher3/Workspace;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->callbacks:Lcom/android/launcher3/Workspace;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->surfaceTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->dragStarted:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->destroyed:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->onTaskMovementChanged()V

    :cond_1
    return-void
.end method

.method public final setDragStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->dragStarted:Z

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Landroid/window/RemoteTransition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/ActivityOptions;->makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setTransientLaunch()Landroid/app/ActivityOptions;

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, LU1/o;

    invoke-direct {v2, p0, p1, v0}, LU1/o;-><init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 8

    const-string v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "startT"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "finishCB"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    const/4 v7, 0x7

    if-ne v4, v7, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v6

    :goto_2
    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_5

    const/4 v7, 0x4

    if-ne v4, v7, :cond_6

    :cond_5
    move v5, v6

    :cond_6
    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_c

    if-nez v3, :cond_8

    goto/16 :goto_5

    :cond_8
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->isOpeningNegOne:Z

    if-eqz p1, :cond_9

    move-object v5, v2

    goto :goto_3

    :cond_9
    move-object v5, v3

    :goto_3
    if-eqz p1, :cond_a

    move-object v4, v3

    goto :goto_4

    :cond_a
    move-object v4, v2

    :goto_4
    invoke-static {v5, p2}, LH1/g;->b(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->monitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p3, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p1, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p1, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-virtual {p3, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p3, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->isOpeningNegOne:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->tmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p3, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_b
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance p1, LU1/l;

    move-object v1, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LU1/l;-><init>(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/window/IRemoteTransitionFinishedCallback;)V

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p3, LU1/p;

    invoke-direct {p3, p0, p1}, LU1/p;-><init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;LU1/l;)V

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    :goto_5
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :try_start_0
    invoke-interface {p4, v0, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->TAG:Ljava/lang/String;

    const-string p2, "Failed to finish transition"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method
