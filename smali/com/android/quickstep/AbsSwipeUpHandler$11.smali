.class Lcom/android/quickstep/AbsSwipeUpHandler$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field final synthetic val$quickstepLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field final synthetic val$splashView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/view/ViewGroup;Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->val$splashView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->val$quickstepLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler$11;->lambda$onAnimationEnd$0(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$0(Landroid/view/ViewGroup;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->val$splashView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->val$quickstepLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/BaseDepthController;->pauseBlursOnWindows(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$11;->val$splashView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/quickstep/t;

    invoke-direct {v1, v0, p0}, Lcom/android/quickstep/t;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->o0(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/t;)V

    return-void
.end method
