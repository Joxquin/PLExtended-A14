.class public final Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;


# static fields
.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SCALE_DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TRANSLATE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field protected final mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsHomeScreenVisible:Z

.field private final mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field private final mMaxYProgress:F

.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private final mMotionPauseMinDisplacement:F

.field private mNoIntercept:Z

.field private mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

.field private mStartState:Lcom/android/launcher3/LauncherState;

.field private final mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

.field private mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final mXRange:F

.field private mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mYRange:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/e;->E:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Ly0/e;->v:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->TRANSLATE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->SCALE_DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/uioverrides/touchcontrollers/f;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;I)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    new-instance v0, Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/touch/BothAxesSwipeDetector$Listener;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMaxYProgress:F

    new-instance v0, Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-direct {v0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07032c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseMinDisplacement:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMaxYProgress:F

    invoke-virtual {p1, v0, p0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->setProgress(FF)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->cancelAnimations()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setOnEmptyMessageUpdatedListener(Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;)V

    return-void
.end method

.method public static c(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/VibratorWrapper;

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatedFloat;->cancelAnimation()V

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingState()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->setupOverviewAnimators()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onAnimationToStateCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)Lcom/android/quickstep/views/LauncherRecentsView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Lcom/android/launcher3/uioverrides/states/OverviewState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->onAnimationToStateCompleted(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method private onAnimationToStateCompleted(Lcom/android/launcher3/LauncherState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    iget v3, v2, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    sget-object v4, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    if-ne p1, v4, :cond_0

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    iget v5, p1, Lcom/android/launcher3/LauncherState;->ordinal:I

    iget v2, v2, Lcom/android/launcher3/LauncherState;->ordinal:I

    if-le v5, v2, :cond_1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNKNOWN_SWIPEUP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNKNOWN_SWIPEDOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    iget v5, p1, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    invoke-static {v3, v5, v2}, Lcom/android/launcher3/logging/StatsLogManager;->getLauncherAtomEvent(IILcom/android/launcher3/logging/StatsLogManager$EventEnum;)Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    if-ne p1, v4, :cond_2

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/uioverrides/touchcontrollers/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/uioverrides/touchcontrollers/f;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;I)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setupOverviewAnimators()V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    sget-object v8, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v3}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->getOverviewScaleAndOffsetForBackgroundState(Lcom/android/launcher3/BaseDraggingActivity;)[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v8, v6, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v4, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v10, Lcom/android/quickstep/views/RecentsView;->TASK_THUMBNAIL_SPLASH_ALPHA:Landroid/util/FloatProperty;

    invoke-virtual {v10, v6, v9}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    invoke-virtual {v6, v7}, Lcom/android/quickstep/views/RecentsView;->setContentAlpha(F)V

    invoke-virtual {v6, v7}, Lcom/android/quickstep/views/RecentsView;->setFullscreenProgress(F)V

    invoke-virtual {v3}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/quickstep/views/OverviewActionsView;->getVisibilityAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/android/quickstep/views/RecentsView;->setTaskIconScaledDown(Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/uioverrides/states/OverviewState;->getOverviewScaleAndOffset(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)[F

    move-result-object v2

    new-instance v7, Lcom/android/launcher3/anim/PendingAnimation;

    iget v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v10, v10, v18

    float-to-long v12, v10

    invoke-direct {v7, v12, v13}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    aget v10, v2, v11

    sget-object v15, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v6, v4, v10, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;->getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I

    move-result v1

    invoke-virtual {v7, v4, v1, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewBackgroundColor(Lcom/android/launcher3/views/ScrimView;ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v13, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v14, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v12, v7

    move-object v4, v15

    move v15, v1

    move-object/from16 v17, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_0
    invoke-virtual {v7}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    new-instance v1, Lcom/android/launcher3/anim/PendingAnimation;

    iget v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    mul-float v4, v4, v18

    float-to-long v12, v4

    invoke-direct {v1, v12, v13}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    aget v2, v2, v5

    sget-object v4, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->SCALE_DOWN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6, v8, v2, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {v1, v6, v2, v9, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v6}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v10, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    move-object v3, v1

    move-object v7, v9

    invoke-static/range {v3 .. v10}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createForRecents(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v4, Lcom/android/launcher3/uioverrides/touchcontrollers/e;

    invoke-direct {v4, v0, v2, v11}, Lcom/android/launcher3/uioverrides/touchcontrollers/e;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Ljava/lang/Object;I)V

    invoke-direct {v3, v4}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    return-void
.end method

.method private updateNonOverviewAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    iget v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    or-int/lit8 v0, v0, 0xa

    iput v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/states/StateAnimationConfig;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    const/4 v2, 0x0

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v0

    sget-object v5, Lcom/android/launcher3/util/NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->getLastSystemUiStateFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_MODE_SUPPORTED:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/android/launcher3/MotionEventsUtils;->isTrackpadMultiFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v4, 0x40800000    # 4.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    :cond_6
    move v0, v3

    :goto_1
    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_7

    return v2

    :cond_7
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->setDetectableScrollConditions(IZ)V

    :cond_8
    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNoIntercept:Z

    if-eqz p0, :cond_9

    return v2

    :cond_9
    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onDrag(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 5

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    div-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    div-float/2addr v1, v2

    sget-object v2, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    add-float/2addr v1, v2

    iget-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_0
    sget-object v2, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    iget p1, p1, Landroid/graphics/PointF;->y:F

    neg-float p1, p1

    iget v2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseMinDisplacement:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    move v3, v4

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1, v3}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    :cond_4
    return-void
.end method

.method public final onDragEnd(Landroid/graphics/PointF;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v2

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    iget-object v7, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v7}, Lcom/android/quickstep/util/MotionPauseDetector;->isPaused()Z

    move-result v7

    const/16 v8, 0xb

    iget-object v9, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->cancelAnimations()V

    invoke-static {v8}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    new-instance v1, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v1}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    const-wide/16 v2, 0x12c

    iput-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-virtual {v2, v3, v5, v1}, Lcom/android/launcher3/statemanager/StateManager;->createAtomicAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$1;

    invoke-direct {v3, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController$1;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-wide v1, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-virtual {v0, v5, v1, v2, v4}, Lcom/android/launcher3/statemanager/StateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/statemanager/BaseState;JI)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    return-void

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v10, v2, v7

    if-gez v10, :cond_2

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto/16 :goto_3

    :cond_2
    iget v10, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v10, v10, v7

    if-lez v10, :cond_3

    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    goto :goto_3

    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v10, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v2, v2, v10

    if-lez v2, :cond_4

    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_7

    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_9

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_3

    :cond_9
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result v2

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v10

    if-lez v2, :cond_a

    move v2, v4

    goto :goto_1

    :cond_a
    move v2, v5

    :goto_1
    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v10, v10, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    cmpl-float v10, v10, v6

    if-lez v10, :cond_b

    move v10, v4

    goto :goto_2

    :cond_b
    move v10, v5

    :goto_2
    if-eqz v2, :cond_c

    if-nez v10, :cond_c

    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    goto :goto_3

    :cond_c
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    :goto_3
    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v10

    iget v11, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v9}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXRange:F

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    invoke-static {v11, v7, v6}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v10

    sget-object v11, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v2, v11, :cond_d

    move v12, v7

    goto :goto_4

    :cond_d
    move v12, v6

    :goto_4
    iget v13, v1, Landroid/graphics/PointF;->x:F

    sub-float v14, v12, v10

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v13

    iget-object v15, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v15}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v15

    const/4 v8, 0x2

    new-array v6, v8, [F

    aput v10, v6, v5

    aput v12, v6, v4

    invoke-virtual {v15, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v15, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    iget v10, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v10}, Ly0/e;->c(F)Ly0/d;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mXOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    if-eqz v3, :cond_e

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_e

    if-ne v2, v11, :cond_e

    move v3, v4

    goto :goto_5

    :cond_e
    move v3, v5

    :goto_5
    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v6, v6, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v9}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v10, v12

    iget v12, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYRange:F

    div-float/2addr v10, v12

    sub-float/2addr v6, v10

    iget v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMaxYProgress:F

    invoke-static {v6, v7, v10}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v6

    if-eqz v3, :cond_f

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_f
    if-ne v2, v11, :cond_10

    move v10, v6

    goto :goto_6

    :cond_10
    move v10, v7

    :goto_6
    sub-float v17, v10, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    mul-float v17, v17, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float v1, v17, v1

    move-wide/from16 v16, v13

    float-to-long v12, v1

    iget-object v1, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v1, v6, v10}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mYOverviewAnim:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v10, v6}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    iget-object v6, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v6

    if-eqz v3, :cond_11

    iget-boolean v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mIsHomeScreenVisible:Z

    if-nez v3, :cond_11

    new-instance v3, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v3}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    iput v4, v3, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->updateNonOverviewAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v6

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    new-instance v3, Lcom/android/quickstep/util/WorkspaceRevealAnim;

    invoke-direct {v3, v9, v5}, Lcom/android/quickstep/util/WorkspaceRevealAnim;-><init>(Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {v3}, Lcom/android/quickstep/util/WorkspaceRevealAnim;->start()V

    goto :goto_9

    :cond_11
    if-ne v2, v11, :cond_12

    move v3, v4

    goto :goto_7

    :cond_12
    move v3, v5

    :goto_7
    if-eqz v3, :cond_13

    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v10

    iget-object v11, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mClearStateOnCancelListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()V

    :cond_13
    iget-object v10, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v10}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v10

    if-eqz v3, :cond_14

    move v14, v7

    goto :goto_8

    :cond_14
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_8
    new-array v3, v8, [F

    aput v10, v3, v5

    aput v14, v3, v4

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    :goto_9
    sget-object v3, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    if-ne v2, v3, :cond_15

    sget-object v3, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v9}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/VibratorWrapper;

    sget v4, Lcom/android/quickstep/views/RecentsView;->SCROLL_VIBRATION_PRIMITIVE:I

    const v7, 0x3f19999a    # 0.6f

    sget-object v8, Lcom/android/quickstep/views/RecentsView;->SCROLL_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(IFLandroid/os/VibrationEffect;)V

    goto :goto_a

    :cond_15
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    :goto_a
    move-wide/from16 v3, v16

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v4, Lcom/android/launcher3/uioverrides/touchcontrollers/e;

    invoke-direct {v4, v0, v2, v5}, Lcom/android/launcher3/uioverrides/touchcontrollers/e;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->cancelAnimations()V

    invoke-virtual {v15}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final onDragStart(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mRecentsView:Lcom/android/quickstep/views/LauncherRecentsView;

    const/16 v1, 0xb

    invoke-static {p1, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mStartState:Lcom/android/launcher3/LauncherState;

    new-instance v1, Lcom/android/launcher3/uioverrides/touchcontrollers/g;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/g;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mSwipeDetector:Lcom/android/launcher3/touch/BothAxesSwipeDetector;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/touch/BothAxesSwipeDetector;->setDetectableScrollConditions(IZ)V

    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sget-object v3, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->TRANSLATE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->updateNonOverviewAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->mNonOverviewAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/uioverrides/touchcontrollers/g;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/g;-><init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->setOnEmptyMessageUpdatedListener(Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NoButtonQuickSwitchTouchController;->setupOverviewAnimators()V

    :cond_1
    return-void
.end method
