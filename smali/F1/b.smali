.class public final synthetic LF1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/ViewGroup;

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:LF1/d;

.field public final synthetic l:LF1/f;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/BaseDragLayer;LF1/d;LF1/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x85

    iput v0, p0, LF1/b;->d:I

    const/16 v0, 0x15d

    iput v0, p0, LF1/b;->e:I

    iput-object p1, p0, LF1/b;->f:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    iput p1, p0, LF1/b;->g:F

    iput p1, p0, LF1/b;->h:F

    const/16 p1, 0x53

    iput p1, p0, LF1/b;->i:I

    const/16 p1, 0x10a

    iput p1, p0, LF1/b;->j:I

    iput-object p2, p0, LF1/b;->k:LF1/d;

    iput-object p3, p0, LF1/b;->l:LF1/f;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    iget v0, p0, LF1/b;->d:I

    iget v1, p0, LF1/b;->e:I

    iget-object v2, p0, LF1/b;->f:Landroid/view/ViewGroup;

    iget v3, p0, LF1/b;->g:F

    iget v4, p0, LF1/b;->h:F

    iget v5, p0, LF1/b;->i:I

    iget v6, p0, LF1/b;->j:I

    iget-object v7, p0, LF1/b;->k:LF1/d;

    iget-object p0, p0, LF1/b;->l:LF1/f;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v8, LF1/g;->a:Landroid/view/animation/Interpolator;

    int-to-long v9, v0

    int-to-float v0, v1

    mul-float/2addr p1, v0

    const-wide/16 v0, 0x0

    long-to-float v0, v0

    sub-float v0, p1, v0

    long-to-float v1, v9

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    check-cast v8, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    instance-of v8, v2, Landroid/window/SplashScreenView;

    if-eqz v8, :cond_0

    check-cast v2, Landroid/window/SplashScreenView;

    invoke-virtual {v2}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    :goto_0
    if-eqz v8, :cond_1

    sub-float v10, v9, v0

    mul-float/2addr v10, v3

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-eqz v2, :cond_2

    sub-float v0, v9, v0

    mul-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    int-to-long v2, v5

    int-to-long v4, v6

    long-to-float v0, v2

    sub-float/2addr p1, v0

    long-to-float v0, v4

    div-float/2addr p1, v0

    invoke-static {p1, v1, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget-object v0, v7, LF1/d;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, LF1/g;->b:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    sget-object v2, Lcom/android/wm/shell/animation/a;->b:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    iget v3, v7, LF1/d;->e:I

    int-to-float v4, v3

    iget v5, v7, LF1/d;->f:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v0

    add-float/2addr v3, v4

    iget-object v0, v7, LF1/d;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, v7, LF1/d;->h:Landroid/graphics/Matrix;

    iget-object v3, v7, LF1/d;->g:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v7, LF1/d;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v3, v7, LF1/d;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v7, LF1/d;->i:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v7}, Landroid/view/View;->postInvalidate()V

    :goto_1
    if-eqz p0, :cond_6

    iget-object v0, p0, LF1/f;->f:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, LF1/f;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, LF1/g;->c:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    iget v2, p0, LF1/f;->b:F

    iget v3, p0, LF1/f;->a:F

    invoke-static {v2, v3, p1, v3}, Lw/f;->a(FFFF)F

    move-result p1

    iget-object v2, p0, LF1/f;->c:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, LF1/f;->e:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, LF1/f;->h:LA1/a;

    iget-object v1, p1, LA1/a;->a:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_5

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :cond_5
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, LF1/f;->i:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, LF1/f;->j:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v3, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v3, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    iget-object p0, p0, LF1/f;->d:Landroid/view/SyncRtSurfaceTransactionApplier;

    filled-new-array {v0}, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    iget-object p0, p1, LA1/a;->a:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p0, v1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_6
    :goto_2
    return-void
.end method
