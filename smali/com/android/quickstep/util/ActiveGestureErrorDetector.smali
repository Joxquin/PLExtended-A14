.class public Lcom/android/quickstep/util/ActiveGestureErrorDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyseAndDump(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/quickstep/util/ActiveGestureLog$EventLog;)V
    .locals 6

    const-string v0, "Error messages for gesture ID: "

    invoke-static {p0, v0}, Lt/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->logId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object p2, p2, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->eventEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;

    invoke-virtual {v3}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->getGestureEvent()Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/quickstep/util/ActiveGestureErrorDetector$1;->$SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_RECENTS_ANIMATION_CANCELED set before/without startRecentsAnimation."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_1
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_RECENTS_SCROLLING_FINISHED set before/without calling setOnPageTransitionEndCallback."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_SCREENSHOT_CAPTURED set before/without STATE_CAPTURE_SCREENSHOT."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v5, "STATE_GESTURE_CANCELLED set before/without motion up."

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_GESTURE_CANCELLED set before/without STATE_GESTURE_STARTED."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_4
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v5, "STATE_GESTURE_COMPLETED set before/without motion up."

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "STATE_GESTURE_COMPLETED set before/without STATE_GESTURE_STARTED."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_5
    const-string v3, "Launcher destroyed mid-gesture"

    invoke-static {v4, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_6
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "expecting onTasksAppeared to be called before/without setting end target to new task"

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_7
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_NEW_TASK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v5, "onTasksAppeared called before/without setting end target to new task"

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "onTasksAppeared was not expected to be called"

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_2

    :pswitch_8
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET_HOME:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const-string v3, "recents view scroller animation aborted after setting end target HOME, but before settling on end target."

    invoke-static {v4, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_2

    :pswitch_9
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "recents activity screenshot was cleaned up before/without STATE_SCREENSHOT_CAPTURED being set."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_2

    :pswitch_a
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "cancelRecentsAnimation called before/without startRecentsAnimation."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_2

    :pswitch_b
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "finishRecentsAnimation called before/without startRecentsAnimation."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_2

    :pswitch_c
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "onSettledOnEndTarget called before/without setEndTarget."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    goto :goto_2

    :pswitch_d
    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v4, "Motion up detected before/without motion down."

    invoke-static {v3, p0, v4, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    :goto_2
    or-int/2addr v2, v3

    goto/16 :goto_0

    :cond_2
    sget-object p2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_DOWN:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v4

    const-string v3, "Motion down never detected."

    invoke-static {p2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->MOTION_UP:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    const-string v3, "Motion up never detected."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    const-string v5, "setEndTarget was called, but onSettledOnEndTarget wasn\'t."

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr p2, v3

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    const-string v5, "setEndTarget was called, but STATE_END_TARGET_ANIMATION_FINISHED was never set."

    invoke-static {v3, p0, v5, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    or-int/2addr p2, v3

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    const-string v3, "setEndTarget was called, but STATE_RECENTS_SCROLLING_FINISHED was never set."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_END_TARGET_ANIMATION_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->ON_SETTLED_ON_END_TARGET:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    const-string v3, "STATE_END_TARGET_ANIMATION_FINISHED and STATE_RECENTS_SCROLLING_FINISHED were set, but onSettledOnEndTarget wasn\'t called."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->START_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FINISH_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v4

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    const-string v3, "startRecentsAnimation was called, but finishRecentsAnimation and cancelRecentsAnimation weren\'t."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_STARTED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_COMPLETED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_GESTURE_CANCELLED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v4

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    const-string v3, "STATE_GESTURE_STARTED was set, but STATE_GESTURE_COMPLETED and STATE_GESTURE_CANCELLED weren\'t."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_CAPTURE_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_SCREENSHOT_CAPTURED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    const-string v3, "STATE_CAPTURE_SCREENSHOT was set, but STATE_SCREENSHOT_CAPTURED wasn\'t."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->SET_ON_PAGE_TRANSITION_END_CALLBACK:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_SCROLLING_FINISHED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v4

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    const-string v3, "setOnPageTransitionEndCallback called, but STATE_RECENTS_SCROLLING_FINISHED wasn\'t set."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CANCEL_CURRENT_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_HANDLER_INVALIDATED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    const-string v3, "AbsSwipeUpHandler.cancelCurrentAnimation wasn\'t called and STATE_HANDLER_INVALIDATED wasn\'t set."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->STATE_RECENTS_ANIMATION_CANCELED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CLEANUP_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v4

    goto :goto_c

    :cond_c
    move v2, v1

    :goto_c
    const-string v3, "STATE_RECENTS_ANIMATION_CANCELED was set but the task screenshot wasn\'t cleaned up."

    invoke-static {v2, p0, v3, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    or-int/2addr p2, v2

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->EXPECTING_TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->TASK_APPEARED:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move v1, v4

    :cond_d
    const-string v0, "onTaskAppeared was expected to be called but wasn\'t."

    invoke-static {v1, p0, v0, p1}, Lcom/android/quickstep/util/ActiveGestureErrorDetector;->printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    or-int/2addr p2, v0

    if-nez p2, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\tNo errors detected."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static printErrorIfTrue(ZLjava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t- "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
