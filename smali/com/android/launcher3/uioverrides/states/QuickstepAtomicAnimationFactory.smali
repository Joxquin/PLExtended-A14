.class public final Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;
.super Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;
.source "SourceFile"


# instance fields
.field private mHintToNormalDuration:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mHintToNormalDuration:I

    return-void
.end method


# virtual methods
.method public final prepareForAtomicAnimation(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher3/LauncherState;

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher3/LauncherState;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "creating animation fromState: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " toState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "b/279059025"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v4, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/views/RecentsView;

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    const/16 v7, 0xe

    const/4 v8, 0x3

    const/4 v9, 0x6

    const/16 v10, 0xb

    const/4 v11, 0x7

    const/16 v12, 0x9

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v2, v5, :cond_0

    sget-object v15, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    if-ne v2, v15, :cond_b

    :cond_0
    sget-object v15, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v3, v15, :cond_b

    new-instance v3, Le1/a;

    invoke-direct {v3, v4}, Le1/a;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v4, v3}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    const v5, 0x3ea8f5c3    # 0.33f

    if-ne v2, v3, :cond_1

    sget-object v15, Ly0/e;->b:Landroid/view/animation/Interpolator;

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v14, v6, v15}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    const/16 v15, 0x11

    invoke-virtual {v1, v15, v6}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v6, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-static {v14, v5, v6}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    const/16 v15, 0x12

    invoke-virtual {v1, v15, v6}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_1
    sget-object v6, Ly0/e;->m:Landroid/view/animation/Interpolator;

    const/high16 v15, 0x3e800000    # 0.25f

    invoke-static {v14, v15, v6}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v15

    invoke-virtual {v1, v7, v15}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    if-ne v2, v3, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v7, v6}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    :cond_2
    invoke-virtual {v1, v10, v6}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v5, Ly0/e;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v13, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v5, Ly0/e;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v8, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget-object v6, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v6}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v6

    if-lez v6, :cond_5

    sget-object v5, Ly0/e;->f:Ly0/a;

    invoke-virtual {v1, v9, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v12, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    if-ne v2, v3, :cond_3

    sget-object v2, Ly0/e;->c:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_3
    sget-object v2, Ly0/e;->n:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v14, v3, v2}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v11, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v4}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    sub-int/2addr v2, v7

    mul-int/lit16 v2, v2, 0x96

    const/16 v3, 0x2ee

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    iget-wide v5, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget-object v2, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v2, :cond_4

    iget-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    const-wide/16 v5, 0x12c

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    :cond_4
    iget-wide v1, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-virtual {v4, v7, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    goto :goto_1

    :cond_5
    sget-object v2, Ly0/e;->y:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v11, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const v2, 0x3f666666    # 0.9f

    invoke-static {v14, v2, v5}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v2, Ly0/e;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v12, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :goto_1
    iget-object v1, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    move v2, v13

    goto :goto_2

    :cond_6
    move v2, v7

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v14

    if-lez v2, :cond_7

    move v2, v13

    goto :goto_3

    :cond_7
    move v2, v7

    :cond_8
    :goto_3
    const v3, 0x3f6b851f    # 0.92f

    if-nez v2, :cond_9

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_9
    iget-object v0, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_a

    goto :goto_4

    :cond_a
    move v13, v7

    :goto_4
    if-nez v13, :cond_1a

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto/16 :goto_8

    :cond_b
    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/16 v15, 0xd

    if-eq v2, v6, :cond_c

    sget-object v7, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/states/HintState;

    if-eq v2, v7, :cond_c

    sget-object v7, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/states/HintState;

    if-ne v2, v7, :cond_12

    :cond_c
    if-ne v3, v5, :cond_12

    iget-object v0, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_f

    if-ne v2, v6, :cond_d

    sget-object v0, Ly0/e;->u:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_d
    sget-object v0, Ly0/e;->h:Landroid/view/animation/Interpolator;

    :goto_5
    invoke-virtual {v1, v13, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Ly0/e;->u:Landroid/view/animation/Interpolator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-lez v0, :cond_e

    sget-object v0, Ly0/e;->e:Ly0/a;

    invoke-virtual {v1, v12, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_6

    :cond_e
    sget-object v0, Ly0/e;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v12, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_6

    :cond_f
    sget-object v0, Ly0/e;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v13, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v12, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getContentAlpha()F

    move-result v0

    cmpl-float v0, v0, v14

    if-nez v0, :cond_11

    :cond_10
    sget-object v0, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    const v2, 0x3faa3d71    # 1.33f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_11
    :goto_6
    sget-object v0, Ly0/e;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v8, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v9, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v15, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    new-instance v2, Le1/b;

    invoke-direct {v2}, Le1/b;-><init>()V

    invoke-virtual {v1, v10, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v11, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto/16 :goto_8

    :cond_12
    sget-object v4, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/states/HintState;

    if-ne v2, v4, :cond_14

    if-ne v3, v6, :cond_14

    sget-object v2, Ly0/e;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v15, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    iget v2, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mHintToNormalDuration:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_13

    iget-object v2, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/Launcher;

    check-cast v2, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    iget-object v5, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    invoke-static {v4, v2, v3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getWorkspaceSpringScaleAnimator(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mHintToNormalDuration:I

    :cond_13
    iget-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iget v0, v0, Lcom/android/launcher3/uioverrides/states/QuickstepAtomicAnimationFactory;->mHintToNormalDuration:I

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    goto :goto_8

    :cond_14
    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    if-ne v2, v4, :cond_15

    if-ne v3, v6, :cond_15

    iget-object v0, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyAllAppsToNormalConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    goto :goto_8

    :cond_15
    if-ne v2, v6, :cond_16

    if-ne v3, v4, :cond_16

    iget-object v0, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/touch/AllAppsSwipeController;->applyNormalToAllAppsAnimConfig(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/states/StateAnimationConfig;)V

    goto :goto_8

    :cond_16
    if-ne v2, v5, :cond_18

    sget-object v5, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    if-ne v3, v5, :cond_18

    iget-object v0, v0, Lcom/android/quickstep/util/RecentsAtomicAnimationFactory;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_OVERVIEW_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    goto :goto_7

    :cond_17
    sget-object v0, Lcom/android/quickstep/util/SplitAnimationTimings;->PHONE_OVERVIEW_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    :goto_7
    sget-object v2, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-interface {v0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getActionsFadeStartOffset()F

    move-result v3

    invoke-interface {v0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getActionsFadeEndOffset()F

    move-result v0

    invoke-static {v3, v0, v2}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    goto :goto_8

    :cond_18
    if-eq v2, v6, :cond_19

    if-ne v2, v4, :cond_1a

    :cond_19
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    if-ne v3, v0, :cond_1a

    sget-object v0, Lcom/android/quickstep/util/SplitAnimationTimings;->TABLET_HOME_TO_SPLIT:Lcom/android/quickstep/util/SplitAnimationTimings;

    sget-object v2, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-interface {v0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getScrimFadeInStartOffset()F

    move-result v3

    invoke-interface {v0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getScrimFadeInEndOffset()F

    move-result v0

    invoke-static {v3, v0, v2}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object v0, Ly0/e;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v11, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_1a
    :goto_8
    return-void
.end method
