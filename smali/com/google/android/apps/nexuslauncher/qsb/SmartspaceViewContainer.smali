.class public Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Ln1/k;
.implements Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# static fields
.field public static final synthetic g:I


# instance fields
.field public final d:Lcom/android/launcher3/views/ActivityContext;

.field public e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

.field public f:Lcom/android/systemui/shared/regionsampling/RegionSampler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->d:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {p1}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;LL2/d;)V
    .locals 15

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v1

    move-object v5, v1

    :goto_0
    if-nez v5, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v6, v1

    :goto_1
    if-nez v6, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    const-string v1, "explanation_intent"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/content/Intent;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v4, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f130203

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f080335

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v12, LW1/z;

    invoke-direct {v12, v2, v1}, LW1/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {v4, v10, v11, v9, v12}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v10, 0x7f13020c

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0802ad

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    new-instance v11, LW1/A;

    invoke-direct {v11}, LW1/A;-><init>()V

    invoke-direct {v1, v4, v10, v9, v11}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_5

    move-object v1, v0

    goto :goto_4

    :cond_5
    const-string v1, "feedback_intent"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    instance-of v4, v1, Landroid/content/Intent;

    if-eqz v4, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    :cond_6
    const/4 v10, 0x1

    if-eqz v0, :cond_7

    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v11, 0x7f1300b6

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f080334

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v12, LW1/z;

    invoke-direct {v12, v10, v0}, LW1/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v4, v11, v9, v12}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    :goto_5
    if-eqz v5, :cond_9

    if-eq v2, v10, :cond_9

    new-instance v11, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080333

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    new-instance v14, LW1/B;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, LW1/B;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;LL2/d;Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Landroid/os/Bundle;)V

    invoke-direct {v11, v12, v13, v9, v14}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v1, v8, v10}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    return-void
.end method

.method public final consume(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result p2

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    new-instance p1, LW1/x;

    invoke-direct {p1, p0}, LW1/x;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->a(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const/4 v1, 0x0

    const-class v2, Ln1/f;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Ln1/k;Ljava/lang/Class;Z)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_REGION_SAMPLING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->f:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {p0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->startRegionSampler()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Ln1/k;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_REGION_SAMPLING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->f:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {p0}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->stopRegionSampler()V

    :cond_0
    return-void
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->a(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    const-string v1, "home"

    iput-object v1, v0, LK2/C;->t:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_REGION_SAMPLING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v5, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v6

    new-instance v7, LW1/y;

    invoke-direct {v7, p0}, LW1/y;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/regionsampling/RegionSampler;-><init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZLm3/a;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->f:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f060376

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f060375

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->setForegroundColors(II)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->f:Lcom/android/systemui/shared/regionsampling/RegionSampler;

    invoke-virtual {v1}, Lcom/android/systemui/shared/regionsampling/RegionSampler;->currentForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->f(I)V

    sget-object v0, Le3/f;->a:Le3/f;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f040638

    invoke-static {v2, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->f(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v2, v1, LK2/C;->i:Ljava/util/List;

    const/4 v3, 0x0

    iput v3, v1, LK2/C;->w:F

    iget v4, v1, LK2/C;->v:F

    cmpl-float v5, v4, v3

    if-lez v5, :cond_2

    sget-object v4, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->e:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    goto :goto_1

    :cond_2
    cmpg-float v4, v4, v3

    if-gez v4, :cond_3

    sget-object v4, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->f:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->d:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    :goto_1
    iput-object v4, v1, LK2/C;->u:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    iput v3, v1, LK2/C;->v:F

    invoke-virtual {v1}, LK2/C;->h()V

    invoke-virtual {v1}, LK2/C;->g()V

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v1, v1, LK2/C;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    invoke-static {v0, v4}, LK2/t;->f(Landroid/view/View;I)V

    :cond_4
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-boolean v1, v1, LK2/C;->n:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->k:F

    cmpl-float v6, v3, v1

    if-nez v6, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v5

    goto :goto_4

    :cond_5
    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    const v1, 0x3eb851ec    # 0.36f

    cmpg-float v6, v5, v1

    if-gez v6, :cond_7

    sub-float v5, v1, v5

    goto :goto_3

    :cond_7
    sub-float/2addr v5, v1

    const v1, 0x3f23d70a    # 0.64f

    :goto_3
    div-float/2addr v5, v1

    :cond_8
    :goto_4
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->i:Lcom/google/android/systemui/smartspace/PageIndicator;

    if-eqz v1, :cond_9

    iget-object v6, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v6}, LK2/C;->b()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/systemui/smartspace/PageIndicator;->a(IZ)V

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->i:Lcom/google/android/systemui/smartspace/PageIndicator;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_9
    iput v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->k:F

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-boolean v3, v1, LK2/C;->m:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_b

    iget-object v3, v1, LK2/C;->i:Ljava/util/List;

    if-eq v3, v2, :cond_b

    invoke-virtual {v1}, LK2/C;->b()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v1}, LK2/C;->b()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :cond_a
    invoke-virtual {v0, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->g(I)V

    :cond_b
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v2, v1, LK2/C;->t:Ljava/lang/String;

    iget v1, v1, LK2/C;->w:F

    invoke-static {v2, v1}, LK2/e;->d(Ljava/lang/String;F)I

    move-result v1

    if-ne v1, v5, :cond_c

    goto :goto_5

    :cond_c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    iget-boolean v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->g:Z

    if-nez v2, :cond_d

    goto :goto_5

    :cond_d
    sget-boolean v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->t:Z

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", setDozeAmount: Logging SMARTSPACE_CARD_SEEN, currentSurface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BcSmartspaceView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->c()V

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    new-instance v1, LW1/z;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, LW1/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call before attaching view to window."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onPluginConnected(Ln1/j;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Ln1/f;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->e(Ln1/f;)V

    return-void
.end method

.method public final onPluginDisconnected(Ln1/j;)V
    .locals 1

    check-cast p1, Ln1/f;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->e:LK2/s;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->e(Ln1/f;)V

    :cond_0
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method
