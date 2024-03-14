.class final Lcom/android/launcher3/QuickstepTransitionManager$11;
.super Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;
.source "SourceFile"


# instance fields
.field final synthetic val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

.field final synthetic val$floatingWidgetAlpha:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/quickstep/views/FloatingWidgetView;F)V
    .locals 0

    iput-object p6, p0, Lcom/android/launcher3/QuickstepTransitionManager$11;->val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

    iput p7, p0, Lcom/android/launcher3/QuickstepTransitionManager$11;->val$floatingWidgetAlpha:F

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;F)V
    .locals 11

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v10, Ly0/e;->d:Landroid/view/animation/Interpolator;

    move v0, p2

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v5, p2

    invoke-static/range {v5 .. v10}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v5

    iget-object v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$11;->val$finalFloatingWidget:Lcom/android/quickstep/views/FloatingWidgetView;

    iget v4, p0, Lcom/android/launcher3/QuickstepTransitionManager$11;->val$floatingWidgetAlpha:F

    sub-float v7, v1, p2

    move-object v3, p1

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/views/FloatingWidgetView;->update(Landroid/graphics/RectF;FFFF)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->onUpdate(Landroid/graphics/RectF;F)V

    return-void
.end method
