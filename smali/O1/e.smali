.class public final synthetic LO1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LO1/e;->d:I

    iput-object p2, p0, LO1/e;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, LO1/e;->d:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, LO1/e;->e:Ljava/lang/Object;

    check-cast p0, LO1/l;

    invoke-virtual {p0}, LO1/l;->a()V

    iget-object v0, p0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    invoke-virtual {v0, v0}, Lcom/android/launcher3/views/OptionsPopupView;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V

    iget-object p0, p0, LO1/l;->o:LO1/E;

    iget-boolean v0, p0, LO1/E;->d:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LO1/E;->d:Z

    iget-object v1, p0, LO1/E;->e:LO1/D;

    const/4 v2, 0x2

    if-nez v1, :cond_2

    iget-object p0, p0, LO1/E;->c:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->a()V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->k:LO1/w;

    invoke-static {v1, v2}, LO1/w;->a(LO1/w;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, v1, LO1/D;->g:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v3, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, LO1/E;->b:LO1/j;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v4, p0, LO1/E;->e:LO1/D;

    iget-object v4, v4, LO1/D;->f:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    iget v7, v4, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iget v8, v4, Landroid/graphics/Point;->y:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    iget v9, v4, Landroid/graphics/Point;->y:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    int-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v5, v6, v7, v0}, [Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    double-to-int v0, v4

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LO1/E;->f:Landroid/animation/Animator;

    sget-object v1, LO1/E;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, LO1/E;->f:Landroid/animation/Animator;

    new-instance v1, LO1/B;

    invoke-direct {v1, p0}, LO1/B;-><init>(LO1/E;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, LO1/E;->a:LO1/l;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object p0, p0, LO1/E;->f:Landroid/animation/Animator;

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, LO1/e;->e:Ljava/lang/Object;

    check-cast p0, LO1/j;

    invoke-static {p0}, LO1/j;->b(LO1/j;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
