.class public final Lcom/google/android/apps/nexuslauncher/allapps/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lcom/android/launcher3/anim/AnimatedFloat;

.field public final c:Z

.field public final d:Landroid/view/animation/Interpolator;

.field public final e:Lcom/google/android/apps/nexuslauncher/logging/b;

.field public f:Landroid/view/WindowInsetsAnimationController;

.field public g:Lcom/android/launcher3/anim/AnimatedFloat;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(ZLandroid/view/animation/Interpolator;Lcom/google/android/apps/nexuslauncher/allapps/L;Lcom/google/android/apps/nexuslauncher/logging/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/D;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/D;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->b:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyboardInsetAnimation, toAllApps="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardInsetAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->c:Z

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->d:Landroid/view/animation/Interpolator;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->a:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->e:Lcom/google/android/apps/nexuslauncher/logging/b;

    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/allapps/F;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->g:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->b:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->c:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->b:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->b:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    :cond_4
    sub-float v0, v1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v2, v1

    int-to-float v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-interface {p0, v1, v2, v0}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyFinish, mShowKeyboardOnEnd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardInsetAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v2}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v3}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->b:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v4, v4, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const-string v4, "Performing fallback animation for applyFinish in onReady"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->c:Z

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/allapps/F;->c(ZFFF)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq v3, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    if-ne v3, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->c:Z

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/allapps/F;->c(ZFFF)V

    return-void
.end method

.method public final c(ZFFF)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "performFallbackAnimation, shouldShow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hiddenY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " shownY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " currentY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardInsetAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/D;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/D;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->g:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p1, :cond_0

    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    goto :goto_0

    :cond_0
    sub-float p1, p3, p4

    sub-float/2addr p3, p2

    div-float p4, p1, p3

    :goto_0
    iput p4, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Ly0/e;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/E;

    invoke-direct {p2, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/E;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/F;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCancelled, mController="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "KeyboardInsetAnimation"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/L;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/L;->a(I)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->e:Lcom/google/android/apps/nexuslauncher/logging/b;

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->CONTROLLED:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/nexuslauncher/logging/b;->a(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->g:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatedFloat;->cancelAnimation()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->g:Lcom/android/launcher3/anim/AnimatedFloat;

    :cond_1
    return-void
.end method

.method public final onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinished, controller="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyboardInsetAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->e:Lcom/google/android/apps/nexuslauncher/logging/b;

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->CONTROLLED:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/logging/b;->b(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    return-void
.end method

.method public final onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReady, controller="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyboardInsetAnimation"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/apps/nexuslauncher/allapps/L;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iput v0, p2, Lcom/google/android/apps/nexuslauncher/allapps/L;->a:I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/L;->a(I)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->e:Lcom/google/android/apps/nexuslauncher/logging/b;

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->CONTROLLED:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/apps/nexuslauncher/logging/b;->c(Landroid/view/WindowInsetsAnimationController;Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/F;->b()V

    return-void
.end method
