.class public Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAllCachedTasks:Ljava/util/List;

.field private final mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mAllCachedTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_0
    iput-object p1, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public static synthetic a(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->lambda$otherVisibleTaskThisIsExcludedOver$0(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(I[Lcom/android/systemui/shared/recents/model/Task;ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->lambda$getPlaceholderTasks$1(I[Lcom/android/systemui/shared/recents/model/Task;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$getPlaceholderTasks$1(I[Lcom/android/systemui/shared/recents/model/Task;ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p0, :cond_0

    new-instance p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, p3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    const/4 v0, 0x0

    invoke-static {p0, p3, v0}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    aput-object p0, p1, p2

    :cond_0
    return-void
.end method

.method private static synthetic lambda$otherVisibleTaskThisIsExcludedOver$0(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v2, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0, v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p0, v1}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    filled-new-array {p0}, [Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPlaceholderTasks([I)[Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Lcom/android/systemui/shared/recents/model/Task;

    return-object p0

    .line 4
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/android/systemui/shared/recents/model/Task;

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 6
    aget v2, p1, v1

    .line 7
    iget-object v3, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mAllCachedTasks:Ljava/util/List;

    new-instance v4, Lcom/android/quickstep/L1;

    invoke-direct {v4, v2, v0, v1}, Lcom/android/quickstep/L1;-><init>(I[Lcom/android/systemui/shared/recents/model/Task;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTaskId()I
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_0
    return p0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isFreeformTask()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeTask()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentsTask()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRootChooseActivity()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.CHOOSER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public otherVisibleTaskThisIsExcludedOver()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mAllCachedTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/quickstep/I1;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/quickstep/I1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-direct {v1, p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-object v1
.end method
