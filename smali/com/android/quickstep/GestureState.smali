.class public Lcom/android/quickstep/GestureState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# static fields
.field public static final DEFAULT_STATE:Lcom/android/quickstep/GestureState;

.field private static FLAG_COUNT:I = 0x0

.field public static final STATE_END_TARGET_ANIMATION_FINISHED:I

.field public static final STATE_END_TARGET_SET:I

.field private static final STATE_NAMES:Ljava/util/List;

.field public static final STATE_RECENTS_ANIMATION_CANCELED:I

.field public static final STATE_RECENTS_ANIMATION_ENDED:I

.field public static final STATE_RECENTS_ANIMATION_FINISHED:I

.field public static final STATE_RECENTS_ANIMATION_INITIALIZED:I

.field public static final STATE_RECENTS_ANIMATION_STARTED:I

.field public static final STATE_RECENTS_SCROLLING_FINISHED:I

.field private static final TAG:Ljava/lang/String; = "GestureState"


# instance fields
.field private final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field private final mGestureId:I

.field private mHandlingAtomicEvent:Z

.field private final mHomeIntent:Landroid/content/Intent;

.field private mLastAppearedTaskTargets:[Landroid/view/RemoteAnimationTarget;

.field private mLastStartedTaskId:[I

.field final mLastStartedTaskIdPredicate:Ljava/util/function/Predicate;

.field private final mOverviewIntent:Landroid/content/Intent;

.field private mPreviouslyAppearedTaskIds:Ljava/util/Set;

.field private mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

.field private mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field private mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

.field private final mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private mSwipeUpStartTimeMs:J

.field private mTrackpadGestureType:Lcom/android/quickstep/GestureState$TrackpadGestureType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/List;

    new-instance v0, Lcom/android/quickstep/GestureState;

    invoke-direct {v0}, Lcom/android/quickstep/GestureState;-><init>()V

    sput-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    const/4 v0, 0x0

    sput v0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    const-string v0, "STATE_END_TARGET_SET"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    const-string v0, "STATE_END_TARGET_ANIMATION_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    const-string v0, "STATE_RECENTS_ANIMATION_INITIALIZED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_INITIALIZED:I

    const-string v0, "STATE_RECENTS_ANIMATION_STARTED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    const-string v0, "STATE_RECENTS_ANIMATION_CANCELED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    const-string v0, "STATE_RECENTS_ANIMATION_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_FINISHED:I

    const-string v0, "STATE_RECENTS_ANIMATION_ENDED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    const-string v0, "STATE_RECENTS_SCROLLING_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getNextStateFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/quickstep/GestureState$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/GestureState$1;-><init>(Lcom/android/quickstep/GestureState;)V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskIdPredicate:Ljava/util/function/Predicate;

    .line 29
    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mTrackpadGestureType:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    const/4 v0, -0x1

    .line 31
    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    .line 32
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    .line 33
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 35
    new-instance v1, Lcom/android/quickstep/MultiStateCallback;

    sget-object v2, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 36
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Lcom/android/quickstep/I;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/quickstep/I;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;Lcom/android/quickstep/MultiStateCallback$TrackedEventsMapper;)V

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 37
    iput v0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/GestureState;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/android/quickstep/GestureState$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/GestureState$1;-><init>(Lcom/android/quickstep/GestureState;)V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskIdPredicate:Ljava/util/function/Predicate;

    .line 14
    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mTrackpadGestureType:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    const/4 v0, -0x1

    .line 16
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    .line 17
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    .line 18
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    .line 19
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 20
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 21
    iget v0, p1, Lcom/android/quickstep/GestureState;->mGestureId:I

    iput v0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    .line 22
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    .line 23
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 24
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTargets:[Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTargets:[Landroid/view/RemoteAnimationTarget;

    .line 25
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    .line 26
    iget-object p1, p1, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/quickstep/GestureState$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/GestureState$1;-><init>(Lcom/android/quickstep/GestureState;)V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskIdPredicate:Ljava/util/function/Predicate;

    .line 3
    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mTrackpadGestureType:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    const/4 v0, -0x1

    .line 5
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    .line 6
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    .line 7
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    .line 8
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 9
    new-instance p1, Lcom/android/quickstep/MultiStateCallback;

    sget-object v0, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lcom/android/quickstep/I;

    invoke-direct {v2, v1}, Lcom/android/quickstep/I;-><init>(I)V

    invoke-direct {p1, v0, v2}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;Lcom/android/quickstep/MultiStateCallback$TrackedEventsMapper;)V

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 11
    iput p2, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    return-void
.end method

.method public static synthetic a(Landroid/view/RemoteAnimationTarget;)I
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/GestureState;->lambda$getLastAppearedTaskIds$0(Landroid/view/RemoteAnimationTarget;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/GestureState;->getTrackedEventForState(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/GestureState;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    return-object p0
.end method

.method private static getNextStateFlag(Ljava/lang/String;)I
    .locals 2

    sget p0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    const/4 v0, 0x1

    shl-int v1, v0, p0

    add-int/2addr p0, v0

    sput p0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    return v1
.end method

.method private static getTrackedEventForState(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 1

    sget v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_0
    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_1
    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_ANIMATION_CANCELED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getLastAppearedTaskIds$0(Landroid/view/RemoteAnimationTarget;)I
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public consumeRecentsAnimationCanceledSnapshot()Ljava/util/HashMap;
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "GestureState:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  gestureID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  runningTask="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  endTarget="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  lastAppearedTaskTargetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTargets:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  lastStartedTaskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isRecentsAnimationRunning="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object p0
.end method

.method public getGestureId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    return p0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getLastAppearedTaskIds()[I
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTargets:[Landroid/view/RemoteAnimationTarget;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/quickstep/H;

    invoke-direct {v0}, Lcom/android/quickstep/H;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getLastStartedTaskIds()[I
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    return-object p0
.end method

.method public getOverviewIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getPreviouslyAppearedTaskIds()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    return-object p0
.end method

.method public getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    return-object p0
.end method

.method public getRunningTaskIds(Z)[I
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mAllCachedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    iget-object v2, v2, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mAllCachedTasks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getSwipeUpStartTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/quickstep/GestureState;->mSwipeUpStartTimeMs:J

    return-wide v0
.end method

.method public getTopRunningTaskId()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/GestureState;->getRunningTaskIds(Z)[I

    move-result-object p0

    aget p0, p0, v0

    return p0
.end method

.method public hasState(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    return p0
.end method

.method public isFourFingerTrackpadGesture()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mTrackpadGestureType:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->FOUR_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHandlingAtomicEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/GestureState;->mHandlingAtomicEvent:Z

    return p0
.end method

.method public isRecentsAnimationRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunningAnimationToLauncher()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isThreeFingerTrackpadGesture()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mTrackpadGestureType:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->THREE_FINGER:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTrackpadGesture()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mTrackpadGestureType:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    sget-object v0, Lcom/android/quickstep/GestureState$TrackpadGestureType;->NONE:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 1

    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_FINISHED:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public runOnceAtState(ILjava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    return-void
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    return-void
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 3
    iget-object p1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    invoke-virtual {p1, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 4
    sget-object p1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEndTarget "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    .line 5
    sget-object v0, Lcom/android/quickstep/GestureState$2;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_ALL_APPS:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->trackEvent(Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->trackEvent(Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_HOME:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->trackEvent(Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    :goto_0
    if-eqz p2, :cond_3

    .line 9
    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    :cond_3
    return-void
.end method

.method public setHandlingAtomicEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/GestureState;->mHandlingAtomicEvent:Z

    return-void
.end method

.method public setState(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method

.method public setSwipeUpStartTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/quickstep/GestureState;->mSwipeUpStartTimeMs:J

    return-void
.end method

.method public setTrackpadGestureType(Lcom/android/quickstep/GestureState$TrackpadGestureType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mTrackpadGestureType:Lcom/android/quickstep/GestureState$TrackpadGestureType;

    return-void
.end method

.method public updateLastAppearedTaskTargets([Landroid/view/RemoteAnimationTarget;)V
    .locals 4

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTargets:[Landroid/view/RemoteAnimationTarget;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    iget v2, v2, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateLastStartedTaskIds([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:[I

    return-void
.end method

.method public updatePreviouslyAppearedTaskIds(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    return-void
.end method

.method public updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    return-void
.end method
