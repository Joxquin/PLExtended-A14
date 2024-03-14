.class public Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ActivityLifecycleCallbacksAdapter;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLaunchedTaskId:I

.field private mTaskLaunchFailedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mLaunchedTaskId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mTaskLaunchFailedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/GroupTask;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->lambda$checkTaskLaunchFailed$1(Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(ILjava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->lambda$checkTaskLaunchFailed$0(ILjava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method

.method private checkTaskLaunchFailed()V
    .locals 5

    iget v0, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mLaunchedTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mTaskLaunchFailedCallback:Ljava/lang/Runnable;

    sget-object v2, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/RecentsModel;

    iget v3, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mLaunchedTaskId:I

    new-instance v4, Lcom/android/quickstep/util/Z;

    invoke-direct {v4, v0, v1}, Lcom/android/quickstep/util/Z;-><init>(ILjava/lang/Runnable;)V

    new-instance v0, Lcom/android/quickstep/util/a0;

    invoke-direct {v0}, Lcom/android/quickstep/util/a0;-><init>()V

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/quickstep/RecentsModel;->isTaskRemoved(ILjava/util/function/Consumer;Ljava/util/function/Predicate;)V

    invoke-direct {p0}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->unregister()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$checkTaskLaunchFailed$0(ILjava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch failed, task (id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") finished mid transition"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$checkTaskLaunchFailed$1(Lcom/android/quickstep/util/GroupTask;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mLaunchedTaskId:I

    iput-object v0, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mTaskLaunchFailedCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public bridge synthetic onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->unregister()V

    return-void
.end method

.method public bridge synthetic onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->checkTaskLaunchFailed()V

    return-void
.end method

.method public bridge synthetic onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->unregister()V

    return-void
.end method

.method public onTransitionFinished()V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->checkTaskLaunchFailed()V

    return-void
.end method

.method public register(Landroid/app/Activity;ILjava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object p1, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mLaunchedTaskId:I

    iput-object p3, p0, Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;->mTaskLaunchFailedCallback:Ljava/lang/Runnable;

    return-void
.end method
