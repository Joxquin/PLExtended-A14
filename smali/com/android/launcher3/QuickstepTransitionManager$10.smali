.class final Lcom/android/launcher3/QuickstepTransitionManager$10;
.super Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;
.source "SourceFile"


# instance fields
.field final synthetic val$finalFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;FLcom/android/launcher3/views/FloatingIconView;)V
    .locals 0

    iput-object p6, p0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$finalFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;-><init>(Lcom/android/launcher3/QuickstepTransitionManager;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/RectF;Landroid/graphics/Rect;F)V

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;F)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$10;->val$finalFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {p0, p2}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->getCornerRadius(F)F

    move-result v5

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/views/FloatingIconView;->update(FLandroid/graphics/RectF;FFFZ)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/QuickstepTransitionManager$SpringAnimRunner;->onUpdate(Landroid/graphics/RectF;F)V

    return-void
.end method
