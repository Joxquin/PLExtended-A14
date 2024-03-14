.class public Lcom/android/quickstep/RemoteAnimationTargets;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final apps:[Landroid/view/RemoteAnimationTarget;

.field public final hasRecents:Z

.field private final mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mReleased:Z

.field public final nonApps:[Landroid/view/RemoteAnimationTarget;

.field public final targetMode:I

.field public final unfilteredApps:[Landroid/view/RemoteAnimationTarget;

.field public final wallpapers:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public constructor <init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleased:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    array-length v2, p1

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    iget v6, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v6, p4, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    :cond_3
    iput-object p1, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/RemoteAnimationTarget;

    iput-object p1, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    iput-object p2, p0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    iput p4, p0, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    iput-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->hasRecents:Z

    iput-object p3, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method

.method private static release([Landroid/view/RemoteAnimationTarget;)V
    .locals 4

    .line 10
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 11
    iget-object v3, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    .line 13
    :cond_0
    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findTask(I)Landroid/view/RemoteAnimationTarget;
    .locals 4

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Landroid/view/RemoteAnimationTarget;->taskId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstAppTarget()Landroid/view/RemoteAnimationTarget;
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Landroid/view/RemoteAnimationTarget;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFirstAppTargetTaskId()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteAnimationTargets;->getFirstAppTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    :goto_0
    return p0
.end method

.method public getNavBarRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 1

    const/16 v0, 0x7e3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RemoteAnimationTargets;->getNonAppTargetOfType(I)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public getNonAppTargetOfType(I)Landroid/view/RemoteAnimationTarget;
    .locals 4

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Landroid/view/RemoteAnimationTarget;->windowType:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnimatingHome()Z
    .locals 5

    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Landroid/view/RemoteAnimationTarget;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public release()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    .line 3
    iget-boolean v2, v1, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mCanRelease:Z

    if-nez v2, :cond_1

    .line 4
    new-instance v0, Lcom/android/quickstep/O0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/O0;-><init>(Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v1, v0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->addOnSafeToReleaseCallback(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleased:Z

    .line 7
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release([Landroid/view/RemoteAnimationTarget;)V

    .line 8
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release([Landroid/view/RemoteAnimationTarget;)V

    .line 9
    iget-object p0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {p0}, Lcom/android/quickstep/RemoteAnimationTargets;->release([Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
