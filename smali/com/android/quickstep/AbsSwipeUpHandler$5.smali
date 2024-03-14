.class Lcom/android/quickstep/AbsSwipeUpHandler$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$5;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$5;->lambda$onActivityRestartAttempt$0(Landroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onActivityRestartAttempt$0(Landroid/app/ActivityManager$RunningTaskInfo;I)Z
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$5;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p2, p2, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/quickstep/GestureState;->getRunningTaskIds(Z)[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    new-instance p3, Lcom/android/quickstep/w;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1}, Lcom/android/quickstep/w;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$5;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->n0(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p2

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$5;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->i0(Lcom/android/quickstep/AbsSwipeUpHandler;)Lcom/android/systemui/shared/system/TaskStackChangeListener;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    :cond_0
    return-void
.end method
