.class public final Lcom/android/systemui/animation/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/d;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/Integer;

.field public final c:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final d:Landroid/view/ViewGroup;

.field public final e:[I

.field public f:Landroid/view/GhostView;

.field public final g:[F

.field public final h:Landroid/graphics/Matrix;

.field public i:Landroid/widget/FrameLayout;

.field public j:Lcom/android/systemui/animation/i;

.field public final k:Le3/c;

.field public l:I

.field public final m:[I

.field public final n:Lcom/android/systemui/animation/n;

.field public final o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 12

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/j;->a:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/animation/j;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/animation/j;->c:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/animation/j;->d:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/systemui/animation/j;->e:[I

    const/16 v0, 0x9

    new-array v2, v0, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    const/4 v5, 0x0

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/animation/j;->g:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/animation/j;->h:Landroid/graphics/Matrix;

    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;-><init>(Lcom/android/systemui/animation/j;)V

    invoke-static {v0}, Lkotlin/a;->a(Lm3/a;)Le3/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/animation/j;->k:Le3/c;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/animation/j;->l:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/animation/j;->m:[I

    new-instance p1, Lcom/android/systemui/animation/n;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/animation/n;-><init>(IIIIFFI)V

    iput-object p1, p0, Lcom/android/systemui/animation/j;->n:Lcom/android/systemui/animation/n;

    iget-object p1, p0, Lcom/android/systemui/animation/j;->a:Landroid/view/View;

    instance-of v0, p1, Lcom/android/systemui/animation/t;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_3
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/android/systemui/animation/j;->o:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A GhostedViewLaunchAnimatorController was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/android/systemui/animation/n;)V
    .locals 5

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/animation/j;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/animation/j;->m:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, p0, Lcom/android/systemui/animation/j;->k:Le3/c;

    invoke-interface {p0}, Le3/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Insets;

    const/4 v2, 0x1

    aget v2, v1, v2

    iget v3, p0, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, v2

    iput v3, p1, Lcom/android/systemui/animation/n;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ln3/a;->a(F)I

    move-result v3

    add-int/2addr v3, v2

    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v3, v2

    iput v3, p1, Lcom/android/systemui/animation/n;->b:I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/android/systemui/animation/n;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ln3/a;->a(F)I

    move-result v0

    add-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, p0

    iput v0, p1, Lcom/android/systemui/animation/n;->d:I

    return-void
.end method

.method public final createAnimatorState()Lcom/android/systemui/animation/n;
    .locals 10

    new-instance v8, Lcom/android/systemui/animation/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/animation/j;->a:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/animation/j;->o:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/android/systemui/animation/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_0
    move v9, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v7, 0x0

    aget v7, v9, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v7

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v9

    mul-float/2addr v9, v7

    :goto_2
    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v5}, Lcom/android/systemui/animation/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v5, 0x4

    aget v5, v6, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v5

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    mul-float/2addr v0, v5

    move v6, v0

    :goto_4
    const/16 v7, 0xf

    move-object v0, v8

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/n;-><init>(IIIIFFI)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/animation/j;->a(Lcom/android/systemui/animation/n;)V

    return-object v8
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/j;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/animation/j;->f:Landroid/view/GhostView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/animation/j;->b:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/animation/j;->c:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/animation/j;->j:Lcom/android/systemui/animation/i;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/systemui/animation/j;->l:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/animation/j;->a:Landroid/view/View;

    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/animation/j;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/animation/j;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    const-string v1, "launchContainer.overlay"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_4
    instance-of p0, p1, Lcom/android/systemui/animation/t;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    check-cast p1, Lcom/android/systemui/animation/t;

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/t;->setShouldBlockVisibilityChanges(Z)V

    goto :goto_2

    :cond_5
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_2
    return-void
.end method

.method public final onLaunchAnimationProgress(Lcom/android/systemui/animation/n;FF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/animation/j;->f:Landroid/view/GhostView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/animation/j;->i:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-boolean v4, v1, Lcom/android/systemui/animation/n;->g:Z

    const/4 v5, 0x4

    iget-object v6, v0, Lcom/android/systemui/animation/j;->a:Landroid/view/View;

    if-eqz v4, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/GhostView;->getVisibility()I

    move-result v4

    const/4 v7, 0x0

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v7}, Landroid/view/GhostView;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/animation/j;->n:Lcom/android/systemui/animation/n;

    invoke-virtual {v0, v4}, Lcom/android/systemui/animation/j;->a(Lcom/android/systemui/animation/n;)V

    iget v8, v1, Lcom/android/systemui/animation/n;->c:I

    iget v9, v4, Lcom/android/systemui/animation/n;->c:I

    sub-int v10, v8, v9

    iget v11, v1, Lcom/android/systemui/animation/n;->d:I

    iget v12, v4, Lcom/android/systemui/animation/n;->d:I

    sub-int v13, v11, v12

    iget v14, v1, Lcom/android/systemui/animation/n;->a:I

    iget v15, v4, Lcom/android/systemui/animation/n;->a:I

    sub-int v16, v14, v15

    iget v5, v1, Lcom/android/systemui/animation/n;->b:I

    iget v7, v4, Lcom/android/systemui/animation/n;->b:I

    sub-int v17, v5, v7

    sub-int/2addr v11, v8

    int-to-float v8, v11

    sub-int/2addr v12, v9

    int-to-float v9, v12

    div-float/2addr v8, v9

    sub-int/2addr v5, v14

    int-to-float v5, v5

    sub-int/2addr v7, v15

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    iget-object v8, v0, Lcom/android/systemui/animation/j;->h:Landroid/graphics/Matrix;

    iget-object v9, v0, Lcom/android/systemui/animation/j;->d:Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    invoke-static {v6, v9, v8}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v6, v0, Lcom/android/systemui/animation/j;->e:[I

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget v7, v4, Lcom/android/systemui/animation/n;->c:I

    int-to-float v9, v7

    iget v11, v4, Lcom/android/systemui/animation/n;->d:I

    sub-int/2addr v11, v7

    int-to-float v7, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    add-float/2addr v7, v9

    const/4 v9, 0x0

    aget v12, v6, v9

    int-to-float v9, v12

    sub-float/2addr v7, v9

    iget v9, v4, Lcom/android/systemui/animation/n;->a:I

    int-to-float v12, v9

    iget v4, v4, Lcom/android/systemui/animation/n;->b:I

    sub-int/2addr v4, v9

    int-to-float v4, v4

    div-float/2addr v4, v11

    add-float/2addr v4, v12

    const/4 v9, 0x1

    aget v12, v6, v9

    int-to-float v12, v12

    sub-float/2addr v4, v12

    invoke-virtual {v8, v5, v5, v7, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    add-int/2addr v10, v13

    int-to-float v4, v10

    div-float/2addr v4, v11

    add-int v5, v16, v17

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v2, v8}, Landroid/view/GhostView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lcom/android/systemui/animation/j;->k:Le3/c;

    invoke-interface {v2}, Le3/c;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Insets;

    iget v4, v1, Lcom/android/systemui/animation/n;->a:I

    iget v5, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v4, v5

    iget v5, v1, Lcom/android/systemui/animation/n;->c:I

    iget v7, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v5, v7

    iget v7, v1, Lcom/android/systemui/animation/n;->d:I

    iget v8, v2, Landroid/graphics/Insets;->right:I

    add-int/2addr v7, v8

    iget v8, v1, Lcom/android/systemui/animation/n;->b:I

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v8, v2

    aget v2, v6, v9

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTop(I)V

    aget v2, v6, v9

    sub-int/2addr v8, v2

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setBottom(I)V

    const/4 v2, 0x0

    aget v4, v6, v2

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLeft(I)V

    aget v4, v6, v2

    sub-int/2addr v7, v4

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setRight(I)V

    iget-object v2, v0, Lcom/android/systemui/animation/j;->j:Lcom/android/systemui/animation/i;

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/animation/i;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/android/systemui/animation/n;->e:F

    iget v1, v1, Lcom/android/systemui/animation/n;->f:F

    iget-object v0, v0, Lcom/android/systemui/animation/j;->j:Lcom/android/systemui/animation/i;

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/systemui/animation/i;->d:[F

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v2, v3, v9

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v4, 0x3

    aput v2, v3, v4

    const/4 v2, 0x4

    aput v1, v3, v2

    const/4 v2, 0x5

    aput v1, v3, v2

    const/4 v2, 0x6

    aput v1, v3, v2

    const/4 v2, 0x7

    aput v1, v3, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    invoke-virtual {v2}, Landroid/view/GhostView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/GhostView;->setVisibility(I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/animation/j;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string p0, "GhostedViewLaunchAnimatorController"

    const-string p1, "Skipping animation as ghostedView is not attached to a ViewGroup"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/animation/j;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    const-string v3, "launchContainer.overlay"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/animation/j;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/animation/j;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xff

    :goto_0
    iput v2, p0, Lcom/android/systemui/animation/j;->l:I

    new-instance v2, Lcom/android/systemui/animation/i;

    invoke-direct {v2, v0}, Lcom/android/systemui/animation/i;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/android/systemui/animation/j;->j:Lcom/android/systemui/animation/i;

    iget-object v0, p0, Lcom/android/systemui/animation/j;->i:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    instance-of v0, p1, Lcom/android/systemui/animation/t;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/animation/t;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/systemui/animation/t;->setShouldBlockVisibilityChanges(Z)V

    :cond_4
    invoke-static {p1, v1}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/animation/j;->f:Landroid/view/GhostView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/GhostView;->getAnimationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/animation/j;->g:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/android/systemui/animation/j;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/animation/j;->c:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :cond_7
    return-void
.end method
