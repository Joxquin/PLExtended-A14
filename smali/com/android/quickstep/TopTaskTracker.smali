.class public Lcom/android/quickstep/TopTaskTracker;
.super Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private final mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

.field private final mOrderedTaskList:Ljava/util/LinkedList;

.field private mPinnedTaskId:I

.field private final mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/J1;

    invoke-direct {v1}, Lcom/android/quickstep/J1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    invoke-direct {v0}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    invoke-direct {v0}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/SystemUiProxy;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    return-void
.end method

.method public static synthetic a()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    invoke-static {}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$5()[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/android/quickstep/TopTaskTracker;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$6(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskRemoved$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskMovedToFront$2(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskMovedToFront$3(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskMovedToFront$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/content/Context;)Lcom/android/quickstep/TopTaskTracker;
    .locals 1

    new-instance v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TopTaskTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic h()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    invoke-static {}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$4()[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getCachedTopTask$4()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getCachedTopTask$5()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$getCachedTopTask$6(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p0, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onTaskMovedToFront$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onTaskMovedToFront$2(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onTaskMovedToFront$3(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onTaskRemoved$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .locals 2

    if-eqz p1, :cond_0

    new-instance p0, Lcom/android/quickstep/K1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/quickstep/K1;-><init>(I)V

    const-string p1, "getCachedTopTask.true"

    invoke-static {p1, p0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance p1, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/quickstep/K1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/quickstep/K1;-><init>(I)V

    const-string v0, "getCachedTopTask.false"

    invoke-static {v0, p1}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/quickstep/H1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/quickstep/H1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-direct {p0, p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getRunningSplitTaskIds()[I
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget v1, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-ne p0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stagePosition:I

    const/4 v4, 0x1

    if-nez v0, :cond_1

    aput v1, v3, v2

    aput p0, v3, v4

    goto :goto_0

    :cond_1
    aput v1, v3, v4

    aput p0, v3, v2

    :goto_0
    return-object v3

    :cond_2
    :goto_1
    new-array p0, v2, [I

    return-object p0
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    iput p3, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iput p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stagePosition:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iput p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->stagePosition:I

    :goto_0
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/quickstep/H1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/android/quickstep/H1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/I1;

    invoke-direct {v1, v2}, Lcom/android/quickstep/I1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/quickstep/H1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/android/quickstep/H1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget v2, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget v2, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/quickstep/G1;

    invoke-direct {v0, p1}, Lcom/android/quickstep/G1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 1

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iput p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iput p1, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget p3, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-ne p3, p1, :cond_3

    iput v0, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;

    iget p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    if-ne p2, p1, :cond_4

    iput v0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;->taskId:I

    :cond_4
    :goto_2
    return-void
.end method
