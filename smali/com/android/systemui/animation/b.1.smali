.class public final Lcom/android/systemui/animation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/d;


# instance fields
.field public final synthetic a:Lcom/android/systemui/animation/d;

.field public final synthetic b:Lcom/android/systemui/animation/d;

.field public final synthetic c:Lcom/android/systemui/animation/c;

.field public final synthetic d:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic e:Landroid/view/RemoteAnimationTarget;

.field public final synthetic f:Landroid/view/RemoteAnimationTarget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/d;Lcom/android/systemui/animation/c;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/b;->b:Lcom/android/systemui/animation/d;

    iput-object p2, p0, Lcom/android/systemui/animation/b;->c:Lcom/android/systemui/animation/c;

    iput-object p3, p0, Lcom/android/systemui/animation/b;->d:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p4, p0, Lcom/android/systemui/animation/b;->e:Landroid/view/RemoteAnimationTarget;

    iput-object p5, p0, Lcom/android/systemui/animation/b;->f:Landroid/view/RemoteAnimationTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/b;->a:Lcom/android/systemui/animation/d;

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/n;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/b;->a:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/l;->createAnimatorState()Lcom/android/systemui/animation/n;

    move-result-object p0

    return-object p0
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/b;->a:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/l;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/b;->a:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/l;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final isBelowAnimatingWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/b;->a:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/d;->isBelowAnimatingWindow()Z

    move-result p0

    return p0
.end method

.method public final isDialogLaunch()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/b;->a:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/d;->isDialogLaunch()Z

    move-result p0

    return p0
.end method

.method public final onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/b;->a:Lcom/android/systemui/animation/d;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/d;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/b;->c:Lcom/android/systemui/animation/c;

    iget-object v0, v0, Lcom/android/systemui/animation/c;->c:Lcom/android/systemui/animation/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/animation/e;->onLaunchAnimationEnd()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/b;->d:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/animation/f;->c:Z

    iget-object p0, p0, Lcom/android/systemui/animation/b;->b:Lcom/android/systemui/animation/d;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling controller.onLaunchAnimationEnd(isExpandingFullyAbove="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") [controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityLaunchAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/l;->onLaunchAnimationEnd(Z)V

    return-void
.end method

.method public final onLaunchAnimationProgress(Lcom/android/systemui/animation/n;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p3

    const-string v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/systemui/animation/n;->g:Z

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    iget-object v11, v0, Lcom/android/systemui/animation/b;->c:Lcom/android/systemui/animation/c;

    if-nez v2, :cond_2

    iget-object v2, v11, Lcom/android/systemui/animation/c;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v12, v0, Lcom/android/systemui/animation/b;->e:Landroid/view/RemoteAnimationTarget;

    iget-object v2, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, v12, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int v5, v3, v4

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    add-int v14, v7, v13

    int-to-float v14, v14

    div-float/2addr v14, v6

    sub-int/2addr v4, v3

    sub-int/2addr v13, v7

    iget v3, v1, Lcom/android/systemui/animation/n;->d:I

    iget v7, v1, Lcom/android/systemui/animation/n;->c:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, v1, Lcom/android/systemui/animation/n;->b:I

    iget v7, v1, Lcom/android/systemui/animation/n;->a:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    int-to-float v7, v13

    div-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iget-object v15, v11, Lcom/android/systemui/animation/c;->i:Landroid/graphics/Matrix;

    invoke-virtual {v15}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v15, v13, v13, v5, v14}, Landroid/graphics/Matrix;->setScale(FFFF)V

    mul-float v3, v7, v13

    sub-float/2addr v3, v7

    iget v4, v1, Lcom/android/systemui/animation/n;->c:I

    int-to-float v7, v4

    iget v14, v1, Lcom/android/systemui/animation/n;->d:I

    sub-int/2addr v14, v4

    int-to-float v4, v14

    div-float/2addr v4, v6

    add-float/2addr v4, v7

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/android/systemui/animation/n;->a:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    invoke-virtual {v15, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v3, v1, Lcom/android/systemui/animation/n;->c:I

    int-to-float v4, v3

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/android/systemui/animation/n;->a:I

    int-to-float v6, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget-object v2, v11, Lcom/android/systemui/animation/c;->l:Landroid/graphics/RectF;

    iget v7, v1, Lcom/android/systemui/animation/n;->d:I

    sub-int/2addr v7, v3

    int-to-float v3, v7

    add-float/2addr v3, v4

    iget v7, v1, Lcom/android/systemui/animation/n;->b:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v11, Lcom/android/systemui/animation/c;->j:Landroid/graphics/Matrix;

    invoke-virtual {v15, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ln3/a;->a(F)I

    move-result v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ln3/a;->a(F)I

    move-result v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ln3/a;->a(F)I

    move-result v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ln3/a;->a(F)I

    move-result v2

    iget-object v14, v11, Lcom/android/systemui/animation/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v14, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v11, Lcom/android/systemui/animation/c;->a:Lcom/android/systemui/animation/d;

    invoke-interface {v2}, Lcom/android/systemui/animation/d;->isBelowAnimatingWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/animation/s;->e:Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Lcom/android/systemui/animation/f;->a:Lcom/android/systemui/animation/o;

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0xb7

    move/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/k;->a(Lcom/android/systemui/animation/o;FJJ)F

    move-result v2

    sget-object v3, Lcom/android/systemui/animation/f;->b:Lcom/android/systemui/animation/m;

    iget-object v3, v3, Lcom/android/systemui/animation/m;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v9

    :goto_0
    iget v3, v1, Lcom/android/systemui/animation/n;->e:F

    iget v4, v1, Lcom/android/systemui/animation/n;->f:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v13

    new-instance v4, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v5, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v4, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v2

    iget-object v3, v11, Lcom/android/systemui/animation/c;->g:Landroid/view/SyncRtSurfaceTransactionApplier;

    filled-new-array {v2}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :cond_2
    :goto_1
    iget-object v12, v0, Lcom/android/systemui/animation/b;->f:Landroid/view/RemoteAnimationTarget;

    if-eqz v12, :cond_5

    iget-object v2, v11, Lcom/android/systemui/animation/c;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    sget-object v2, Lcom/android/systemui/animation/s;->e:Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Lcom/android/systemui/animation/f;->a:Lcom/android/systemui/animation/o;

    sget-wide v4, Lcom/android/systemui/animation/f;->e:J

    const-wide/16 v6, 0x85

    move-object v2, v13

    move/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/k;->a(Lcom/android/systemui/animation/o;FJJ)F

    move-result v2

    new-instance v14, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v3, v12, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v14, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_4

    iget-object v4, v11, Lcom/android/systemui/animation/c;->i:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget v5, v1, Lcom/android/systemui/animation/n;->a:I

    iget-object v6, v12, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget v3, v1, Lcom/android/systemui/animation/n;->c:I

    iget v5, v1, Lcom/android/systemui/animation/n;->d:I

    iget v6, v1, Lcom/android/systemui/animation/n;->b:I

    iget v7, v1, Lcom/android/systemui/animation/n;->a:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    iget-object v9, v11, Lcom/android/systemui/animation/c;->k:Landroid/graphics/Rect;

    invoke-virtual {v9, v3, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Lcom/android/systemui/animation/f;->f:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x85

    move-object v2, v13

    move/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/animation/k;->a(Lcom/android/systemui/animation/o;FJJ)F

    move-result v2

    sget-object v3, Lcom/android/systemui/animation/f;->g:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v9, v2

    invoke-virtual {v14, v9}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    :goto_2
    iget-object v2, v11, Lcom/android/systemui/animation/c;->g:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v14}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v3

    filled-new-array {v3}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :cond_5
    :goto_3
    iget-object v2, v11, Lcom/android/systemui/animation/c;->c:Lcom/android/systemui/animation/e;

    if-eqz v2, :cond_6

    invoke-interface {v2, v8}, Lcom/android/systemui/animation/e;->c(F)V

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/animation/b;->b:Lcom/android/systemui/animation/d;

    move/from16 v2, p2

    invoke-interface {v0, v1, v2, v8}, Lcom/android/systemui/animation/l;->onLaunchAnimationProgress(Lcom/android/systemui/animation/n;FF)V

    return-void
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/b;->c:Lcom/android/systemui/animation/c;

    iget-object v0, v0, Lcom/android/systemui/animation/c;->c:Lcom/android/systemui/animation/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/animation/e;->a()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/animation/f;->c:Z

    iget-object p0, p0, Lcom/android/systemui/animation/b;->b:Lcom/android/systemui/animation/d;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling controller.onLaunchAnimationStart(isExpandingFullyAbove="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") [controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityLaunchAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/l;->onLaunchAnimationStart(Z)V

    return-void
.end method
