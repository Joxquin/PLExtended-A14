.class Lcom/android/quickstep/OverviewCommandHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/OverviewCommandHelper;

.field final synthetic val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field final synthetic val$cmd:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

.field final synthetic val$interactionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->this$0:Lcom/android/quickstep/OverviewCommandHelper;

    iput-object p2, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iput-object p3, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$interactionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p4, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$cmd:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/OverviewCommandHelper$1;->lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void
.end method

.method private static synthetic lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 0

    iget-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$interactionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureCancelled()V

    iget-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$cmd:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    iget-object p0, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onRecentsAnimationComplete()V

    :cond_1
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 2

    iget-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iget-object p2, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$interactionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    new-instance v0, Lcom/android/quickstep/Y;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/android/quickstep/Y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/BaseActivityInterface;->runOnInitBackgroundStateUI(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/OverviewCommandHelper$1;->val$cmd:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    return-void
.end method
