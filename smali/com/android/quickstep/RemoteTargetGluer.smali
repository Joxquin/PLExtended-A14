.class public Lcom/android/quickstep/RemoteTargetGluer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_NUM_HANDLES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RemoteTargetGluer"


# instance fields
.field private mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field private mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->getVisibleDesktopTaskCount(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/quickstep/RemoteTargetGluer;->init(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;IZ)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/quickstep/RemoteTargetGluer;->init(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RemoteAnimationTargets;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p3, p3, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length p3, p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/RemoteTargetGluer;->init(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;IZ)V

    return-void
.end method

.method public static synthetic a(Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/RemoteTargetGluer;->lambda$assignTargetsForSplitScreen$1(Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/quickstep/RemoteAnimationTargets;Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/RemoteTargetGluer;->lambda$assignTargetsForSplitScreen$0(Lcom/android/quickstep/RemoteAnimationTargets;Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/RemoteTargetGluer;->lambda$assignTargetsForSplitScreen$2(Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method private createHandles(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;IZ)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 4

    new-array p0, p3, [Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    new-instance v1, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-direct {v1, p1, p2}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    invoke-virtual {v1, p4}, Lcom/android/quickstep/util/TaskViewSimulator;->setIsDesktopTask(Z)V

    new-instance v2, Lcom/android/quickstep/util/TransformParams;

    invoke-direct {v2}, Lcom/android/quickstep/util/TransformParams;-><init>()V

    new-instance v3, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-direct {v3, v1, v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;-><init>(Lcom/android/quickstep/util/TaskViewSimulator;Lcom/android/quickstep/util/TransformParams;)V

    aput-object v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private createRemoteAnimationTargetsForTarget(Lcom/android/quickstep/RemoteAnimationTargets;Landroid/view/RemoteAnimationTarget;)Lcom/android/quickstep/RemoteAnimationTargets;
    .locals 6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Landroid/view/RemoteAnimationTarget;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-ne v3, p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, p2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_1

    iget-object v5, v3, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_1

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    new-instance p2, Lcom/android/quickstep/RemoteAnimationTargets;

    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    iget-object v1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    iget p1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    return-object p2
.end method

.method private createRemoteAnimationTargetsForTaskId(Lcom/android/quickstep/RemoteAnimationTargets;I)Lcom/android/quickstep/RemoteAnimationTargets;
    .locals 5

    iget-object p0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Landroid/view/RemoteAnimationTarget;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->taskId:I

    if-ne v4, p2, :cond_0

    filled-new-array {v3}, [Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    new-array p0, v1, [Landroid/view/RemoteAnimationTarget;

    :cond_2
    new-instance p2, Lcom/android/quickstep/RemoteAnimationTargets;

    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    iget-object v1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    iget p1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V

    return-object p2
.end method

.method private getStartBounds(Landroid/view/RemoteAnimationTarget;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    if-nez p0, :cond_0

    iget-object p0, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    :cond_0
    return-object p0
.end method

.method private init(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/RemoteTargetGluer;->createHandles(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;IZ)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-void
.end method

.method private static synthetic lambda$assignTargetsForSplitScreen$0(Lcom/android/quickstep/RemoteAnimationTargets;Landroid/view/RemoteAnimationTarget;)Z
    .locals 0

    iget p1, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    iget p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$assignTargetsForSplitScreen$1(Landroid/view/RemoteAnimationTarget;)Z
    .locals 1

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$assignTargetsForSplitScreen$2(Landroid/view/RemoteAnimationTarget;)Z
    .locals 1

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public assignTargets(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    aget-object v2, v2, v0

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/quickstep/RemoteTargetGluer;->createRemoteAnimationTargetsForTarget(Lcom/android/quickstep/RemoteAnimationTargets;Landroid/view/RemoteAnimationTarget;)Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public assignTargetsForDesktop(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    aget-object v2, v2, v0

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    iget v3, v2, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-direct {p0, p1, v3}, Lcom/android/quickstep/RemoteTargetGluer;->createRemoteAnimationTargetsForTaskId(Lcom/android/quickstep/RemoteAnimationTargets;I)Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 10

    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/Q0;

    invoke-direct {v1, p1}, Lcom/android/quickstep/Q0;-><init>(Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appCount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " handleLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RemoteTargetGluer"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v2

    int-to-long v5, v2

    cmp-long v2, v0, v5

    const/4 v5, 0x0

    if-gez v2, :cond_0

    const-string v2, "resizing handles"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v0, v0

    new-array v1, v0, [Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iget-object v2, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    :cond_0
    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/R0;

    invoke-direct {v1, v5}, Lcom/android/quickstep/R0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "containsSplitTargets? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " appsLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length v0, v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object p1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    aget-object p1, p1, v5

    invoke-virtual {v0, p1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    goto/16 :goto_5

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v1, v0

    if-ge v5, v1, :cond_9

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/R0;

    invoke-direct {v1, v4}, Lcom/android/quickstep/R0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    move v1, v5

    :goto_1
    iget-object v2, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length v6, v2

    if-ge v1, v6, :cond_8

    aget-object v2, v2, v1

    iget-object v6, v2, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_7

    if-ne v2, v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/quickstep/RemoteTargetGluer;->getStartBounds(Landroid/view/RemoteAnimationTarget;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v2}, Lcom/android/quickstep/RemoteTargetGluer;->getStartBounds(Landroid/view/RemoteAnimationTarget;)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    if-gt v8, v9, :cond_6

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_4

    goto :goto_2

    :cond_4
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    if-lt v8, v9, :cond_5

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_7

    :cond_5
    move-object v3, v2

    goto :goto_4

    :cond_6
    :goto_2
    move-object v3, v0

    move-object v0, v2

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-direct {p0, v0}, Lcom/android/quickstep/RemoteTargetGluer;->getStartBounds(Landroid/view/RemoteAnimationTarget;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/android/quickstep/RemoteTargetGluer;->getStartBounds(Landroid/view/RemoteAnimationTarget;)Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v0, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget v8, v3, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-direct {v1, v2, v6, v7, v8}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iput-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    invoke-direct {p0, p1, v3}, Lcom/android/quickstep/RemoteTargetGluer;->createRemoteAnimationTargetsForTarget(Lcom/android/quickstep/RemoteAnimationTargets;Landroid/view/RemoteAnimationTarget;)Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/RemoteTargetGluer;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/RemoteTargetGluer;->createRemoteAnimationTargetsForTarget(Lcom/android/quickstep/RemoteAnimationTargets;Landroid/view/RemoteAnimationTarget;)Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    iget-object p1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-virtual {p1, v3, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    :cond_9
    :goto_5
    iget-object p0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object p0
.end method

.method public getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object p0
.end method

.method public getSplitBounds()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    return-object p0
.end method
