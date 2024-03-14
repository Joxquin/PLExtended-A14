.class Lcom/android/quickstep/LauncherSwipeHandlerV2$3;
.super Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

.field final synthetic val$backgroundLocation:Landroid/graphics/RectF;

.field final synthetic val$floatingWidgetAlpha:F

.field final synthetic val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

.field final synthetic val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Lcom/android/quickstep/views/FloatingWidgetView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->this$0:Lcom/android/quickstep/LauncherSwipeHandlerV2;

    iput-object p3, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$backgroundLocation:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    iput p6, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetAlpha:F

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;)V

    return-void
.end method


# virtual methods
.method public getEndRadius(Landroid/graphics/RectF;)F
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->getInitialCornerRadius()F

    move-result p0

    return p0
.end method

.method public getViewIgnoredInWorkspaceRevealAnimation()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$hostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object p0
.end method

.method public getWindowAlpha(F)F
    .locals 6

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Ly0/e;->m:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 0

    invoke-super {p0}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->getWindowTargetRect()Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$backgroundLocation:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->setAnimation(Lcom/android/quickstep/util/RectFSpringAnim;)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    new-instance v1, Lcom/android/launcher3/B0;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/B0;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;I)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/FloatingWidgetView;->setOnTargetChangeListener(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    new-instance v0, Lcom/android/launcher3/B0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/B0;-><init>(Lcom/android/quickstep/util/RectFSpringAnim;I)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/FloatingWidgetView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FF)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;->update(Landroid/graphics/RectF;FF)V

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v10, Ly0/e;->d:Landroid/view/animation/Interpolator;

    move v0, p2

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p3, v0, p3

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v5, p2

    invoke-static/range {v5 .. v10}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v4

    iget-object v1, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetView:Lcom/android/quickstep/views/FloatingWidgetView;

    iget v3, p0, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;->val$floatingWidgetAlpha:F

    sub-float v6, v0, p2

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/views/FloatingWidgetView;->update(Landroid/graphics/RectF;FFFF)V

    return-void
.end method
