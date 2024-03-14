.class Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# instance fields
.field private final mLeftOrTop:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;


# direct methods
.method private constructor <init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Z)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->mTempRect:Landroid/graphics/Rect;

    .line 4
    iput-boolean p2, p0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->mLeftOrTop:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;-><init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private static synthetic lambda$onRecentsAnimationStart$0(Lcom/android/quickstep/views/FloatingTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/FloatingTaskView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v3}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->c(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->mLeftOrTop:Z

    xor-int/lit8 v5, v4, 0x1

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_KEYBOARD_SHORTCUT_SPLIT_LEFT_TOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_KEYBOARD_SHORTCUT_SPLIT_RIGHT_BOTTOM:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object v3, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v3}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->d(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v7

    iget-object v3, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v3}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->f(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)I

    move-result v8

    iget-object v3, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v3}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->e(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)I

    move-result v9

    iget-object v3, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v3}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->d(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    iget-object v3, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v3}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->c(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v11

    iget-object v12, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->mTempRect:Landroid/graphics/Rect;

    invoke-interface/range {v7 .. v12}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V

    new-instance v3, Lcom/android/launcher3/anim/PendingAnimation;

    sget-object v4, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_HOME_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    invoke-interface {v4}, Lcom/android/quickstep/util/SplitAnimationTimings;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    iget-object v4, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v4}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->d(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object v4

    iget-object v5, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v5}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->d(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    iget v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v7}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v7, v6, v15}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v4

    sget-object v5, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v6}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->d(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v5}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v6, v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    new-instance v6, Lcom/android/quickstep/util/Q;

    invoke-direct {v6, v4}, Lcom/android/quickstep/util/Q;-><init>(Lcom/android/quickstep/views/FloatingTaskView;)V

    invoke-virtual {v5, v2, v6}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v2, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->mTempRect:Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v13, v4

    move-object v14, v3

    move-object/from16 v16, v2

    invoke-virtual/range {v13 .. v18}, Lcom/android/quickstep/views/FloatingTaskView;->addStagingAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    iget-object v2, v0, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;->this$0:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    invoke-static {v2}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->c(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;)Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/SplitSelectStateController;->setFirstFloatingTaskView(Lcom/android/quickstep/views/FloatingTaskView;)V

    new-instance v2, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener$1;

    invoke-direct {v2, v0, v1}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener$1;-><init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {v3, v2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
