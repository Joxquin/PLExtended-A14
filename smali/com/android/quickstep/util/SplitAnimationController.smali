.class public final Lcom/android/quickstep/util/SplitAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/android/quickstep/util/SplitAnimationController$Companion;


# instance fields
.field private final splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/SplitAnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/SplitAnimationController$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/android/quickstep/util/SplitAnimationController;->Companion:Lcom/android/quickstep/util/SplitAnimationController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 1

    const-string v0, "splitSelectStateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-void
.end method

.method public static final synthetic access$safeRemoveViewFromDragLayer(Lcom/android/quickstep/util/SplitAnimationController;Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/SplitAnimationController;->safeRemoveViewFromDragLayer(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V

    return-void
.end method

.method private final safeRemoveViewFromDragLayer(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addInitialSplitFromPair(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/launcher3/DeviceProfile;IIZ)V
    .locals 7

    const-string p0, "taskIdAttributeContainer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "builder"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "deviceProfile"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object p1

    const-string v0, "taskIdAttributeContainer.iconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/views/TaskThumbnailView;->SPLASH_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setShowSplashForSplitSelection(Z)V

    iget-boolean v0, p3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v2, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p5

    sub-int p5, p4, p5

    int-to-float p5, p5

    div-float/2addr p5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, p4, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p4, v5

    sget-object v5, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_X:Landroid/util/Property;

    new-array v6, v1, [F

    aput p5, v6, v3

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object p5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v1, [F

    neg-float v0, v0

    aput v0, v5, v3

    invoke-static {p1, p5, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array p5, v1, [F

    aput p4, p5, v3

    invoke-static {p0, p1, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v2, p1

    :goto_0
    sget-object p1, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_Y:Landroid/util/Property;

    new-array p3, v1, [F

    aput v2, p3, v3

    invoke-static {p0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    goto :goto_2

    :cond_1
    iget p4, p3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr p5, p4

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int p4, p5, p4

    int-to-float p4, p4

    div-float/2addr p4, v5

    iget p3, p3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float p3, p3

    add-float/2addr p4, p3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int p3, p5, p3

    int-to-float p3, p3

    div-float p4, p3, v5

    :goto_1
    int-to-float p3, p5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p3, p5

    sget-object p5, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_Y:Landroid/util/Property;

    new-array p6, v1, [F

    aput p4, p6, v3

    invoke-static {p0, p5, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array p5, v1, [F

    aput v2, p5, v3

    invoke-static {p1, p4, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object p1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array p4, v1, [F

    aput p3, p4, v3

    invoke-static {p0, p1, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleX(F)V

    sget-object p1, Lcom/android/quickstep/views/TaskThumbnailView;->SPLIT_SELECT_TRANSLATE_X:Landroid/util/Property;

    new-array p3, v1, [F

    aput v2, p3, v3

    invoke-static {p0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    :goto_2
    return-void
.end method

.method public final createPlaceholderDismissAnim(Lcom/android/launcher3/statemanager/StatefulActivity;)Landroid/animation/AnimatorSet;
    .locals 9

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    const-string v2, "launcher.getOverviewPanel()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    iget-object v2, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v2}, Lcom/android/quickstep/util/SplitSelectStateController;->getFirstFloatingTaskView()Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    const-string v4, "launcher.dragLayer"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v3, v2, v5, v8, v4}, Lcom/android/launcher3/Utilities;->getBoundsForViewInDragLayer(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/View;Landroid/graphics/Rect;ZLandroid/graphics/RectF;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    sget-object v3, Lcom/android/quickstep/views/FloatingTaskView;->PRIMARY_TRANSLATE_OFFSCREEN:Landroid/util/FloatProperty;

    const/4 v5, 0x1

    new-array v5, v5, [F

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/quickstep/views/FloatingTaskView;->getStagePosition()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    invoke-interface {v1, v2, v4, v6, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getFloatingTaskOffscreenTranslationTarget(Lcom/android/quickstep/views/FloatingTaskView;Landroid/graphics/RectF;ILcom/android/launcher3/DeviceProfile;)F

    move-result v1

    aput v1, v5, v8

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/quickstep/util/SplitAnimationController$createPlaceholderDismissAnim$1;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/util/SplitAnimationController$createPlaceholderDismissAnim$1;-><init>(Lcom/android/quickstep/util/SplitAnimationController;Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public final getDrawable(Lcom/android/quickstep/views/IconView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const-string p0, "iconView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getFirstAnimInitViews(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;
    .locals 11

    const-string v0, "taskViewSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "splitSelectSourceSupplier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iget-object v0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isAnimateCurrentTaskDismissal()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    invoke-static {p2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getView()Landroid/view/View;

    move-result-object v2

    const-string p1, "splitSelectSource!!.view"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string p1, "splitSelectSource.drawable"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isDismissingFromSplitPair()Z

    move-result v0

    const-string v1, "taskViewSupplier.get()"

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p1

    const-string v0, "taskView.taskIdAttributeContainers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->getKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v5}, Lcom/android/quickstep/util/SplitSelectStateController;->getInitialTaskId()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object p1

    const-string v0, "container.iconView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/SplitAnimationController;->getDrawable(Lcom/android/quickstep/views/IconView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v5

    const-string p1, "container.thumbnailView"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v7}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v10

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempting to init split from existing split pair without a valid taskIdAttributeContainer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v0

    const-string v1, "taskView.iconView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/quickstep/util/SplitAnimationController;->getDrawable(Lcom/android/quickstep/views/IconView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance p0, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    const-string p2, "taskView.thumbnail"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v5}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/quickstep/util/SplitAnimationController$Companion$SplitAnimInitProps;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ZZLandroid/view/View;)V

    return-object p0
.end method

.method public final getShowSplitInstructionsAnim(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 7

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitInstructionsView()Lcom/android/quickstep/views/SplitInstructionsView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/util/SplitAnimationController;->safeRemoveViewFromDragLayer(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V

    invoke-static {p1}, Lcom/android/quickstep/views/SplitInstructionsView;->getSplitInstructionsView(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/quickstep/views/SplitInstructionsView;

    move-result-object v2

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p0, v2}, Lcom/android/quickstep/util/SplitSelectStateController;->setSplitInstructionsView(Lcom/android/quickstep/views/SplitInstructionsView;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-static {p0}, Lcom/android/quickstep/util/AnimUtils;->getDeviceOverviewToSplitTimings(Z)Lcom/android/quickstep/util/SplitAnimationTimings;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v0, 0x64

    invoke-direct {p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    sget-object v0, Ly0/e;->m:Landroid/view/animation/Interpolator;

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsContainerFadeInStartOffset()F

    move-result v1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsContainerFadeInEndOffset()F

    move-result v3

    invoke-static {v1, v3, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/quickstep/views/SplitInstructionsView;->getTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsTextFadeInStartOffset()F

    move-result v4

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsTextFadeInEndOffset()F

    move-result v5

    invoke-static {v4, v5, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v0

    invoke-virtual {p1, v1, v3, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    sget-object v3, Lcom/android/quickstep/views/SplitInstructionsView;->UNFOLD:Landroid/util/FloatProperty;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v0, Ly0/e;->c:Landroid/view/animation/Interpolator;

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsUnfoldStartOffset()F

    move-result v1

    invoke-interface {p0}, Lcom/android/quickstep/util/SplitAnimationTimings;->getInstructionsUnfoldEndOffset()F

    move-result p0

    invoke-static {v1, p0, v0}, Ly0/e;->b(FFLandroid/view/animation/Interpolator;)Ly0/b;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final getSplitSelectStateController()Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object p0
.end method

.method public final playPlaceholderDismissAnim(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isSplitSelectActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SplitAnimationController;->createPlaceholderDismissAnim(Lcom/android/launcher3/statemanager/StatefulActivity;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final removeSplitInstructionsView(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/util/SplitAnimationController;->splitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getSplitInstructionsView()Lcom/android/quickstep/views/SplitInstructionsView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/util/SplitAnimationController;->safeRemoveViewFromDragLayer(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V

    return-void
.end method
