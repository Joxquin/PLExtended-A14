.class final Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsStashed:Z

.field private mLastStartedTransitionType:I

.field private mLastUnlockTransitionTimeout:J

.field private mPrevFlags:I

.field private final mStashCondition:Ljava/util/function/IntPredicate;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/taskbar/I0;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastStartedTransitionType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastUnlockTransitionTimeout:J

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mStashCondition:Ljava/util/function/IntPredicate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    return p0
.end method


# virtual methods
.method public final createSetStateAnimator(IJ)Landroid/animation/Animator;
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mStashCondition:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    xor-int v2, v1, p1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    if-eq v1, p1, :cond_0

    invoke-static {v3, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->t(Lcom/android/launcher3/taskbar/TaskbarStashController;I)V

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    :cond_0
    const/16 p1, 0x800

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->r(Lcom/android/launcher3/taskbar/TaskbarStashController;II)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-static {v3, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->q(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0xc8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastUnlockTransitionTimeout:J

    :cond_2
    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->l(Lcom/android/launcher3/taskbar/TaskbarStashController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isHotseatIconOnTopWhenAligned()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v3, v2, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->r(Lcom/android/launcher3/taskbar/TaskbarStashController;II)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v5

    :goto_1
    const/4 v1, 0x2

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastUnlockTransitionTimeout:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_5

    move p1, v4

    goto :goto_2

    :cond_5
    move p1, v5

    :goto_2
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v3, v2, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->r(Lcom/android/launcher3/taskbar/TaskbarStashController;II)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v3, v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->q(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v4

    goto :goto_3

    :cond_7
    move p1, v5

    :goto_3
    if-eqz p1, :cond_8

    move v1, v4

    goto :goto_4

    :cond_8
    move v1, v5

    :goto_4
    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->k(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->k(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastStartedTransitionType:I

    if-nez p1, :cond_9

    if-eqz v1, :cond_9

    move p1, v4

    goto :goto_5

    :cond_9
    move p1, v5

    :goto_5
    if-eqz p1, :cond_a

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    if-nez v2, :cond_a

    if-nez v0, :cond_a

    if-ne v1, v4, :cond_a

    goto :goto_6

    :cond_a
    move v5, p1

    :goto_6
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    if-ne p1, v0, :cond_c

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_7
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mLastStartedTransitionType:I

    invoke-static {v3, v0, p2, p3, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->p(Lcom/android/launcher3/taskbar/TaskbarStashController;ZJI)V

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->k(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method
