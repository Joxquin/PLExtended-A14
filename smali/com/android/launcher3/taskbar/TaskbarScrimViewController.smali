.class public final Lcom/android/launcher3/taskbar/TaskbarScrimViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$BackgroundRendererController;


# static fields
.field private static final SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

.field private static final SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mScrimAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarScrimView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/C0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/C0;-><init>(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    return-void
.end method

.method public static a(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->onBackPressed()V

    return-void
.end method

.method public static b(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->setScrimAlpha(F)V

    return-void
.end method


# virtual methods
.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarScrimViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmScrimAlpha.value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public final setCornerRoundness(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->setCornerRoundness(F)V

    return-void
.end method

.method public final updateStateForSysuiFlags(IZ)V
    .locals 4

    sget-boolean v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_BAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    and-int/lit16 v0, p1, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/high16 v3, 0x800000

    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isTaskbarVisibleAndNotStashing()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const p1, 0x3f570a3e    # 0.84000003f

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const p1, 0x3f19999a    # 0.6f

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    if-eqz v1, :cond_6

    new-instance v2, Lcom/android/launcher3/taskbar/B0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/B0;-><init>(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    if-eqz v1, :cond_7

    move v0, p1

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz v1, :cond_8

    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_8
    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_5
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_9
    return-void
.end method
