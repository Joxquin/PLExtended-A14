.class Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$2:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;

.field final synthetic val$controller:Lcom/android/quickstep/RecentsAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener$1;->this$2:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;

    iput-object p2, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener$1;->val$controller:Lcom/android/quickstep/RecentsAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener$1;->this$2:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;

    iget-object v0, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {v0}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->d(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener$1;->this$2:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {p0}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->g(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/SystemUiProxy;->onDesktopSplitSelectAnimComplete(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener$1;->val$controller:Lcom/android/quickstep/RecentsAnimationController;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method
