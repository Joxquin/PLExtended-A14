.class Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# instance fields
.field private final mSplitPosition:I

.field private final mTaskBounds:Landroid/graphics/RectF;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;ILandroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->mTempRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->mTaskBounds:Landroid/graphics/RectF;

    iput p2, p0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->mSplitPosition:I

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->mSplitPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_DESKTOP_MODE_SPLIT_RIGHT_BOTTOM:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_DESKTOP_MODE_SPLIT_LEFT_TOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    iget-object v2, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    iget-object v3, v2, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-static {v2}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->g(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v4, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->mSplitPosition:I

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {v1}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->d(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {v1}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->f(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)I

    move-result v7

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {v1}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->e(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)I

    move-result v8

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {v1}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->d(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    iget-object v1, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    iget-object v1, v1, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v1}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v10

    iget-object v11, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->mTempRect:Landroid/graphics/Rect;

    invoke-interface/range {v6 .. v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V

    new-instance v1, Lcom/android/launcher3/anim/PendingAnimation;

    sget-object v2, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_HOME_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    invoke-interface {v2}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v2, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {v2}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->d(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v3, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {v3}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->d(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    invoke-static {v4}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->c(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v14, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->mTaskBounds:Landroid/graphics/RectF;

    iget-object v15, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->mTempRect:Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v2

    move-object v13, v1

    invoke-virtual/range {v12 .. v17}, Lcom/android/quickstep/views/FloatingTaskView;->addStagingAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    iget-object v3, v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;->this$1:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    iget-object v3, v3, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/SplitSelectStateController;->setFirstFloatingTaskView(Lcom/android/quickstep/views/FloatingTaskView;)V

    new-instance v2, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener$1;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener$1;-><init>(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
