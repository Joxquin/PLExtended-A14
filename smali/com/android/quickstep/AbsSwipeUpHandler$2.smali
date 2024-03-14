.class Lcom/android/quickstep/AbsSwipeUpHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field mHandled:Z

.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field final synthetic val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field final synthetic val$dragLayer:Landroid/view/View;

.field final synthetic val$traceToken:Lcom/android/launcher3/util/SafeCloseable;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/launcher3/util/SafeCloseable;Landroid/view/View;Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$traceToken:Lcom/android/launcher3/util/SafeCloseable;

    iput-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$dragLayer:Landroid/view/View;

    iput-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/AbsSwipeUpHandler$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler$2;->lambda$onDraw$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onDraw$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$traceToken:Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$dragLayer:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/u;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, Lcom/android/quickstep/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method
