.class public final Lw0/d;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public f:F

.field public g:Z

.field public h:J

.field public i:F

.field public j:I

.field public k:F

.field public l:F

.field public m:Lk0/m;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lw0/d;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lw0/d;->e:Ljava/util/Set;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lw0/d;->f:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw0/d;->g:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lw0/d;->h:J

    const/4 v1, 0x0

    iput v1, p0, Lw0/d;->i:F

    iput v0, p0, Lw0/d;->j:I

    const/high16 v1, -0x31000000

    iput v1, p0, Lw0/d;->k:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Lw0/d;->l:F

    iput-boolean v0, p0, Lw0/d;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lw0/d;->e:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw0/d;->a(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final bridge synthetic addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw0/d;->b(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public final b(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lw0/d;->d:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()F
    .locals 2

    iget-object v0, p0, Lw0/d;->m:Lk0/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lw0/d;->l:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    iget p0, v0, Lk0/m;->l:F

    :cond_1
    return p0
.end method

.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lw0/d;->e:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lw0/d;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lw0/d;->g(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw0/d;->k(Z)V

    return-void
.end method

.method public final d()F
    .locals 2

    iget-object v0, p0, Lw0/d;->m:Lk0/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lw0/d;->k:F

    const/high16 v1, -0x31000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    iget p0, v0, Lk0/m;->k:F

    :cond_1
    return p0
.end method

.method public final doFrame(J)V
    .locals 7

    iget-boolean v0, p0, Lw0/d;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lw0/d;->k(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    iget-object v0, p0, Lw0/d;->m:Lk0/m;

    if-eqz v0, :cond_d

    iget-boolean v2, p0, Lw0/d;->n:Z

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-wide v2, p0, Lw0/d;->h:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    sub-long v4, p1, v2

    :goto_0
    iget v0, v0, Lk0/m;->m:F

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v0

    iget v0, p0, Lw0/d;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v2, v0

    long-to-float v0, v4

    div-float/2addr v0, v2

    iget v2, p0, Lw0/d;->i:F

    invoke-virtual {p0}, Lw0/d;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    neg-float v0, v0

    :cond_3
    add-float/2addr v2, v0

    iput v2, p0, Lw0/d;->i:F

    invoke-virtual {p0}, Lw0/d;->d()F

    move-result v0

    invoke-virtual {p0}, Lw0/d;->c()F

    move-result v3

    sget-object v4, Lw0/f;->a:Landroid/graphics/PointF;

    cmpl-float v0, v2, v0

    const/4 v4, 0x1

    if-ltz v0, :cond_4

    cmpg-float v0, v2, v3

    if-gtz v0, :cond_4

    move v1, v4

    :cond_4
    xor-int/lit8 v0, v1, 0x1

    iget v1, p0, Lw0/d;->i:F

    invoke-virtual {p0}, Lw0/d;->d()F

    move-result v2

    invoke-virtual {p0}, Lw0/d;->c()F

    move-result v3

    invoke-static {v1, v2, v3}, Lw0/f;->b(FFF)F

    move-result v1

    iput v1, p0, Lw0/d;->i:F

    iput-wide p1, p0, Lw0/d;->h:J

    invoke-virtual {p0}, Lw0/d;->h()V

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lw0/d;->j:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    if-lt v0, v1, :cond_6

    iget p1, p0, Lw0/d;->f:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    invoke-virtual {p0}, Lw0/d;->d()F

    move-result p1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lw0/d;->c()F

    move-result p1

    :goto_1
    iput p1, p0, Lw0/d;->i:F

    invoke-virtual {p0, v4}, Lw0/d;->k(Z)V

    invoke-virtual {p0}, Lw0/d;->f()Z

    move-result p1

    invoke-virtual {p0, p1}, Lw0/d;->g(Z)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lw0/d;->e:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lw0/d;->j:I

    add-int/2addr v0, v4

    iput v0, p0, Lw0/d;->j:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lw0/d;->g:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lw0/d;->g:Z

    iget v0, p0, Lw0/d;->f:F

    neg-float v0, v0

    iput v0, p0, Lw0/d;->f:F

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lw0/d;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lw0/d;->c()F

    move-result v0

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lw0/d;->d()F

    move-result v0

    :goto_3
    iput v0, p0, Lw0/d;->i:F

    :goto_4
    iput-wide p1, p0, Lw0/d;->h:J

    :cond_a
    :goto_5
    iget-object p1, p0, Lw0/d;->m:Lk0/m;

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    iget p1, p0, Lw0/d;->i:F

    iget p2, p0, Lw0/d;->k:F

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_c

    iget p2, p0, Lw0/d;->l:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_c

    :goto_6
    invoke-static {}, Lk0/d;->a()V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lw0/d;->k:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iget v0, p0, Lw0/d;->l:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p0, p0, Lw0/d;->i:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Frame must be [%f,%f]. It is %f"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_7
    return-void
.end method

.method public final e()J
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "LottieAnimator does not support getStartDelay."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()Z
    .locals 1

    iget p0, p0, Lw0/d;->f:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(Z)V
    .locals 2

    iget-object v0, p0, Lw0/d;->e:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getAnimatedFraction()F
    .locals 2

    iget-object v0, p0, Lw0/d;->m:Lk0/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lw0/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lw0/d;->c()F

    move-result v0

    iget v1, p0, Lw0/d;->i:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lw0/d;->c()F

    move-result v1

    invoke-virtual {p0}, Lw0/d;->d()F

    move-result p0

    :goto_0
    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lw0/d;->i:F

    invoke-virtual {p0}, Lw0/d;->d()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lw0/d;->c()F

    move-result v1

    invoke-virtual {p0}, Lw0/d;->d()F

    move-result p0

    goto :goto_0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw0/d;->m:Lk0/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lw0/d;->i:F

    iget v1, v0, Lk0/m;->k:F

    sub-float/2addr p0, v1

    iget v0, v0, Lk0/m;->l:F

    sub-float/2addr v0, v1

    div-float/2addr p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    iget-object p0, p0, Lw0/d;->m:Lk0/m;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk0/m;->b()F

    move-result p0

    float-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public final bridge synthetic getStartDelay()J
    .locals 0

    invoke-virtual {p0}, Lw0/d;->e()J

    const/4 p0, 0x0

    throw p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lw0/d;->d:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v1, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lw0/d;->e:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lw0/d;->n:Z

    return p0
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Lw0/d;->d:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public final k(Z)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw0/d;->n:Z

    :cond_0
    return-void
.end method

.method public final l(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lw0/d;->e:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lw0/d;->d:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n(J)Landroid/animation/ValueAnimator;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LottieAnimator does not support setDuration."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(F)V
    .locals 2

    iget v0, p0, Lw0/d;->i:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lw0/d;->d()F

    move-result v0

    invoke-virtual {p0}, Lw0/d;->c()F

    move-result v1

    invoke-static {p1, v0, v1}, Lw0/f;->b(FFF)F

    move-result p1

    iput p1, p0, Lw0/d;->i:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lw0/d;->h:J

    invoke-virtual {p0}, Lw0/d;->h()V

    return-void
.end method

.method public final p(Landroid/animation/TimeInterpolator;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LottieAnimator does not support setInterpolator."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(FF)V
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lw0/d;->m:Lk0/m;

    if-nez v0, :cond_0

    const v1, -0x800001

    goto :goto_0

    :cond_0
    iget v1, v0, Lk0/m;->k:F

    :goto_0
    if-nez v0, :cond_1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    iget v0, v0, Lk0/m;->l:F

    :goto_1
    invoke-static {p1, v1, v0}, Lw0/f;->b(FFF)F

    move-result p1

    invoke-static {p2, v1, v0}, Lw0/f;->b(FFF)F

    move-result p2

    iget v0, p0, Lw0/d;->k:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Lw0/d;->l:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    :cond_2
    iput p1, p0, Lw0/d;->k:F

    iput p2, p0, Lw0/d;->l:F

    iget v0, p0, Lw0/d;->i:F

    invoke-static {v0, p1, p2}, Lw0/f;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lw0/d;->o(F)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r(J)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LottieAnimator does not support setStartDelay."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic removeAllListeners()V
    .locals 0

    invoke-virtual {p0}, Lw0/d;->i()V

    return-void
.end method

.method public final bridge synthetic removeAllUpdateListeners()V
    .locals 0

    invoke-virtual {p0}, Lw0/d;->j()V

    return-void
.end method

.method public final bridge synthetic removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw0/d;->l(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final bridge synthetic removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw0/d;->m(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public final bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lw0/d;->n(J)Landroid/animation/ValueAnimator;

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic setDuration(J)Landroid/animation/ValueAnimator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lw0/d;->n(J)Landroid/animation/ValueAnimator;

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw0/d;->p(Landroid/animation/TimeInterpolator;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setRepeatMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lw0/d;->g:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw0/d;->g:Z

    iget p1, p0, Lw0/d;->f:F

    neg-float p1, p1

    iput p1, p0, Lw0/d;->f:F

    :cond_0
    return-void
.end method

.method public final bridge synthetic setStartDelay(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lw0/d;->r(J)V

    const/4 p0, 0x0

    throw p0
.end method
