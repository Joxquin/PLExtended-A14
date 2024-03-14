.class public final synthetic Lcom/android/quickstep/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
.implements Lcom/android/quickstep/MultiStateCallback$TrackedEventsMapper;


# virtual methods
.method public final createActivityInterface(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->v(J)V

    return-void
.end method

.method public final getTrackedEventForState(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->w(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object p0

    return-object p0
.end method
