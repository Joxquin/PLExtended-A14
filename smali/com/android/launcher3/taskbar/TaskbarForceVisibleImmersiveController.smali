.class public final Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# instance fields
.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDimmingRunnable:Lcom/android/launcher3/taskbar/f0;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconAlphaForDimming:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mIsImmersiveMode:Z

.field private final mKidsModeAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mUndimmingRunnable:Lcom/android/launcher3/taskbar/f0;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/taskbar/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/f0;-><init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mDimmingRunnable:Lcom/android/launcher3/taskbar/f0;

    new-instance v0, Lcom/android/launcher3/taskbar/f0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/f0;-><init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mUndimmingRunnable:Lcom/android/launcher3/taskbar/f0;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/f0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/f0;-><init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIconAlphaForDimming:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mKidsModeAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-void
.end method

.method public static a(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIconAlphaForDimming:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static b(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getBackButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIconAlphaForDimming:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getHomeButtonAlpha()Lcom/android/launcher3/util/MultiValueAlpha;

    move-result-object p0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    iget v0, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIconAlphaForDimming:Lcom/android/launcher3/anim/AnimatedFloat;

    const v0, 0x3e19999a    # 0.15f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconDimming()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconUndimming()V

    return-void
.end method

.method private startIconDimming()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mDimmingRunnable:Lcom/android/launcher3/taskbar/f0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x5

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/16 v3, 0x1194

    invoke-static {p0, v3, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startIconUndimming()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mDimmingRunnable:Lcom/android/launcher3/taskbar/f0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mUndimmingRunnable:Lcom/android/launcher3/taskbar/f0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIsImmersiveMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarForceVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_1
    return v1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconDimming()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconUndimming()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconUndimming()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setHomeButtonAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setBackButtonAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final updateSysuiFlags(I)V
    .locals 1

    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIsImmersiveMode:Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarForceVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mIsImmersiveMode:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconDimming()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->startIconUndimming()V

    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mKidsModeAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setHomeButtonAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setBackButtonAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setHomeButtonAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setBackButtonAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :goto_2
    return-void
.end method
